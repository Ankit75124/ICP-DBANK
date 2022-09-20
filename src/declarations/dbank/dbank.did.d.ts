import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkbalance' : () => Promise<number>,
  'compound' : () => Promise<undefined>,
  'topDown' : () => Promise<undefined>,
  'topUp' : () => Promise<undefined>,
  'topUpM' : (arg_0: number) => Promise<undefined>,
  'withdrawl' : (arg_0: number) => Promise<undefined>,
}
