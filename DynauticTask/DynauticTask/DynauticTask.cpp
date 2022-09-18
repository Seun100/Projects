// DynauticTask.cpp
// This programe implements a function thats opens a CAN channel and sets its baudrate to the
//  value inputed from the main function
//

#include "iostream"
#include "canlib.h"
// When called, CheckForError will check for and print any error.
// The program is aborted if an error has occured.
void Check(const char* id, canStatus stat)
{
    if (stat != canOK) {
        char buf[50];
        buf[0] = '\0';
        canGetErrorText(stat, buf, sizeof(buf));
        //printf("%s: failed, stat=%d (%s)\n", id, (int)stat, buf);
        std::cout << id << " failed, stat=" << (int)stat << " " << buf<<std::endl;
    }
    else
    {
        std::cout << "Success" << std::endl;
    }
}
canHandle open_Channel(int channel_no, unsigned int dev_serial_no, int baudrate) 
{
    canHandle hnd;
    canStatus stat;
    unsigned int SN;
    stat = canGetChannelData(channel_no, canCHANNELDATA_CARD_SERIAL_NO, &SN, sizeof(SN));
    Check("canGetChannelData", stat);
    if (SN == dev_serial_no)
    {
        hnd = canOpenChannel(channel_no, canOPEN_ACCEPT_VIRTUAL);
        if (hnd < 0) 
        {
            // To check for errors and print any possible error message, we can use the
            // Check method.
            Check("canOpenChannel", (canStatus)hnd);
            // and then exit the program.
            exit(1);
            // setting the baudrate
        }// All the posible baud rate
        switch (baudrate)
        {
        case 10:
            stat = canSetBusParams(hnd, canBITRATE_10K, 0, 0, 0, 0, 0);
            break;
        case 50:
            stat = canSetBusParams(hnd, canBITRATE_50K, 0, 0, 0, 0, 0);
            break;
        case 62:
            stat = canSetBusParams(hnd, canBITRATE_62K, 0, 0, 0, 0, 0);
            break;
        case 83:
            stat = canSetBusParams(hnd, canBITRATE_83K, 0, 0, 0, 0, 0);
            break;
        case 125:
            stat = canSetBusParams(hnd, canBITRATE_125K, 0, 0, 0, 0, 0);
            break;
        case 250:
            stat = canSetBusParams(hnd, canBITRATE_250K, 0, 0, 0, 0, 0);
            break;
        case 500:
            stat = canSetBusParams(hnd, canBITRATE_500K, 0, 0, 0, 0, 0);
            break;
        case 1000:
            stat = canSetBusParams(hnd, canBITRATE_1M, 0, 0, 0, 0, 0);
            break;
        default:
            std::cout << "Incompactible baudrate, 50kb/s used instead" << std::endl;
            stat = canSetBusParams(hnd, canBITRATE_50K, 0, 0, 0, 0, 0);
            break;

        }
        //canSetBitrate(hnd, baudrate);
        //Check("canSetBitrate", stat);
        stat = canBusOn(hnd);
        Check("canBusOn", stat);
        return hnd;

    }
    else
    {
        std::cout << "Error incorrect device" << std::endl;
        return NULL;
        
    }
        
}

int main()
{
    int number_of_channels;
    canStatus stat;
    canHandle hnd;
    canInitializeLibrary();
    stat = canGetNumberOfChannels(&number_of_channels);
    Check("canGetNumberOfChannels", (canStatus)stat);
    //Check if any CAN channel is active
    if (number_of_channels > 0) {
        std::cout << "Found " << number_of_channels << " channels"<< std::endl;
        //This computer on has a  2 channel Kvaser virtual driver installed with 
        // channel numbers 0 and 1 respectively and serial number 0
        hnd = open_Channel(0, 0, 250);
        stat = canBusOn(hnd);
        Check("canBusOn", stat);

    }
    else {
        std::cout << "could not find any CAN interface" << std::endl;
    }

    return 0;
}