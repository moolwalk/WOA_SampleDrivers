/*++

Module Name:

    public.h

Abstract:

    This module contains the common declarations shared by driver
    and user applications.

Environment:

    user and kernel

--*/

//
// Define an Interface Guid so that apps can find the device and talk to it.
//

DEFINE_GUID (GUID_DEVINTERFACE_SampleKmdf,
    0xf0778f75,0xb75b,0x44cb,0x92,0x27,0x59,0x0a,0x4b,0xdc,0x47,0x7c);
// {f0778f75-b75b-44cb-9227-590a4bdc477c}
