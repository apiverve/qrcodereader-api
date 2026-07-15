declare module '@apiverve/qrcodereader' {
  export interface qrcodereaderOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface qrcodereaderResponse {
    status: string;
    error: string | null;
    data: QRCodeReaderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface QRCodeReaderData {
      text:     null | string;
      location: Location;
  }
  
  interface Location {
      topLeft:     BottomLeft;
      topRight:    BottomLeft;
      bottomLeft:  BottomLeft;
      bottomRight: BottomLeft;
  }
  
  interface BottomLeft {
      x: number | null;
      y: number | null;
  }

  export default class qrcodereaderWrapper {
    constructor(options: qrcodereaderOptions);

    execute(callback: (error: any, data: qrcodereaderResponse | null) => void): Promise<qrcodereaderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: qrcodereaderResponse | null) => void): Promise<qrcodereaderResponse>;
    execute(query?: Record<string, any>): Promise<qrcodereaderResponse>;
  }
}
