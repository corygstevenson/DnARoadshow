using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Azure.Storage.Blobs;
using Hl7.Fhir.Model;
using Hl7.Fhir.Serialization;
using Microsoft.Azure.WebJobs;
using Microsoft.Extensions.Logging;

// Building me a FHIR uploader to connect to the Azure FHIR server from the Azure Storage account
// This is a .NET Core 3.1 console app

