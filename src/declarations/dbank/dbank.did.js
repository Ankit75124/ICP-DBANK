export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkbalance' : IDL.Func([], [IDL.Float64], ['query']),
    'compound' : IDL.Func([], [], ['oneway']),
    'topDown' : IDL.Func([], [], ['oneway']),
    'topUp' : IDL.Func([], [], ['oneway']),
    'topUpM' : IDL.Func([IDL.Float64], [], ['oneway']),
    'withdrawl' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
