//
// Created by Jake Stover on 4/16/18.
//

#include <tiff.h>

#ifndef LSP_SKIMCZI_H
#define LSP_SKIMCZI_H


// ================= //
// SEGMENT ID HEADER //
// ================= //
#pragma pack(push,1)
typedef struct{
    char id[16];
    uint64 allocatedSize;
    uint64 usedSize;
} SID;
#pragma pack(pop)

// ================ //
// FILE HEADER INFO //
// ================ //
#pragma pack(push,1)
typedef struct {
    uint32 Major;                       // "1"
    uint32 Minor;                       // "0"
    uint32 Reserved1;
    uint32 Reserved2;
    char PrimaryFileGuid[16];             // Unique Guid of Master file (FilePart 0)
    char FileGuid[16];                    // Unique Per file
    uint32 FilePart;                    // Part number in multi-file scenarios
    uint64 DirectoryPosition;           // File position of the SubBlockDirectory Segment
    uint64 MetadataPosition;            // File position of the Metadata Segment.
    uint32 UpdatePending;               // Bool (0xffff, 0);
    uint64 AttachmentDirectoryPosition; // File position of the AttachmentDirectory Segment.
    char Padding[432];                    // 432 = 512 - 80
} CziHeaderInfo;
#pragma pack(pop)


// ======================= //
// METADATA SEGMENT HEADER //
// ======================= //
#pragma pack(push, 1)
typedef struct
{
    uint32 XmlSize;
    uint32 AttachmentSize;
    char Spare[248];
} CziMetadataSegmentHeaderPart;
#pragma pack(pop)



// ==================== //
// DATA SUBBLOCK HEADER //
// ==================== //
#pragma pack(push,1)
typedef struct  {
    unsigned char Dimension[4];
    int32 Start;
    int32 Size;
    float StartCoordinate;
    int32 StoredSize;
} CziDimensionEntryDV1;
#pragma pack(pop)


#pragma pack(push,1)
typedef struct {
    unsigned char SchemaType[2]; // "DV"
    int32 PixelType;
    int64 FilePosition;
    int32 FilePart;
    int32 Compression;
    unsigned char PyramidType;
    unsigned char spare1;
    unsigned char spare2[4];
    int32 DimensionCount;
    CziDimensionEntryDV1 DimensionEntries[12]; // As far as I can tell, there are only 12 posible axes
} CziDirectoryEntryDV;
#pragma pack(pop)


#pragma pack(push,1)
typedef struct {
    unsigned char SchemaType[2]; // "DV"
    int32 PixelType;
    int64 FilePosition;
    int32 FilePart;
    int32 Compression;
    unsigned char PyramidType;
    unsigned char spare1;
    unsigned char spare2[4];
    int32 DimensionCount;
} CziDirectoryEntryDV_HeaderOnly;
#pragma pack(pop)


#pragma pack(push,1)
typedef struct {
    uint32 MetadataSize;        // 4
    uint32 AttachmentSize;      // 4
    uint64 DataSize;            // 8
    unsigned char SchemaType[2];  // 2
    uint32 PixelType;           // 4
    uint64 FilePosition;        // 8
    uint32 FilePart;            // 4
    uint32 Compression;         // 4
    unsigned char PyramidType;    // 1
    unsigned char spare1;         // 1
    unsigned char spare2[4];      // 4
    uint32 DimensionCount;      // 4
} CziSubBlockSegment_HeaderOnly;
#pragma pack(pop)


#pragma pack(push,1)
typedef struct {
    uint32 MetadataSize;        // 4
    uint32 AttachmentSize;      // 4
    uint64 DataSize;            // 8
    unsigned char SchemaType[2];  // 2
    uint32 PixelType;           // 4
    uint64 FilePosition;        // 8
    uint32 FilePart;            // 4
    uint32 Compression;         // 4
    unsigned char PyramidType;    // 1
    unsigned char spare1;         // 1
    unsigned char spare2[4];      // 4
    uint32 DimensionCount;      // 4
    CziDimensionEntryDV1 DimensionEntries[12];  // As far as I can tell, there are only 12 posible axes
} CziSubBlockSegment;
#pragma pack(pop)


// Pixel data types - these need to correspond to the values in CZI p.23
typedef enum {
    CZIPIXELTYPE_UNDEFINED         = -1,
    CZIPIXELTYPE_GRAY8             = 0,  //--- 1 Byte/Pixel;  8 bit unsigned
    CZIPIXELTYPE_GRAY16            = 1,  //--- 2 Byte/Pixel; 16 bit unsigned
    CZIPIXELTYPE_GRAY32FLOAT       = 2,  //--- 4 Byte/Pixel; 32 bit IEEE float
    CZIPIXELTYPE_BGR24             = 3,  //--- 3 Byte/Pixel; 8 bit triples,
    //    representing the color channels
    //    Blue, Green and Red
            CZIPIXELTYPE_BGR48             = 4,  //--- 6 Byte/Pixel; 16 bit triples,
    //    representing the color channels
    //    Blue, Green and Red
            CZIPIXELTYPE_BGR96FLOAT        = 8,  //--- 12 Byte/Pixel; Triple of 4 byte
    //    IEEE float, representing the color
    //    channels Blue, Green and Red
            CZIPIXELTYPE_BGRA32            = 9,  //--- 4 Byte/Pixel; 8 bit triples
    //    followed by an alpha
    //    (transparency) channel
            CZIPIXELTYPE_GRAY64COMPEXFLOAT = 10, //--- 8 Byte/Pixel; 2 x 4 byte IEEE
    //    float, representing real and
    //    imaginary part of a complex number
            CZIPIXELTYPE_BGR192COMPEXFLOAT = 11, //--- 24 Byte/Pixel; A triple of 2 x 4
    //    byte IEEE float, representing real
    //    and imaginary part of a complex
    //    number, for the color channels
    //    Blue, Green and Red
            CZIPIXELTYPE_GRAY32            = 12, //--- 4 Byte/Pixel; 32 Bit integer
    //    [planned]
            CZIPIXELTYPE_GRAY64            = 13  //--- 8 Byte/Pixel; Double precision
    //    floating point [planned]
} CziPixelType;



// Compression Schemes - these need to correspond to the values in CZI p.25
typedef enum {
    CZICOMPRESSTYPE_UNDEFINED  = -1,
    CZICOMPRESSTYPE_RAW        = 0,  //--- Uncompressed
    CZICOMPRESSTYPE_JPGFILE    = 1,  //--- JPEG Compression
    CZICOMPRESSTYPE_LZW        = 2,  //--- Lemple-Ziff-Welch
    CZICOMPRESSTYPE_JPEGXRFILE = 3   //--- Jpeg-XR aka HDP-file
} CziCompmressionType;


