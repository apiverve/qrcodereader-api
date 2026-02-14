declare module '@apiverve/qrcodereader' {
  export interface qrcodereaderOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface qrcodereaderResponse {
    status: string;
    error: string | null;
    data: QRCodeReaderData;
    code?: number;
  }


  interface QRCodeReaderData {
      text:     string;
      location: Location;
  }
  
  interface Location {
      topLeft:     BottomLeft;
      topRight:    BottomLeft;
      bottomLeft:  BottomLeft;
      bottomRight: BottomLeft;
  }
  
  interface BottomLeft {
      x: number;
      y: number;
  }

  export default class qrcodereaderWrapper {
    constructor(options: qrcodereaderOptions);

    execute(callback: (error: any, data: qrcodereaderResponse | null) => void): Promise<qrcodereaderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: qrcodereaderResponse | null) => void): Promise<qrcodereaderResponse>;
    execute(query?: Record<string, any>): Promise<qrcodereaderResponse>;
  }
}
