using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.QRCodeReader
{
    /// <summary>
    /// Query options for the QR Code Reader API
    /// </summary>
    public class QRCodeReaderQueryOptions
    {
        /// <summary>
        /// Upload an image file containing a QR code to decode (supported formats: JPG, PNG, GIF)
        /// </summary>
        [JsonProperty("image")]
        public string Image { get; set; }
    }
}
