{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE FlexibleInstances #-}

#include "ppm.h"

module Ppm where

import Foreign
import Foreign.C

peekPtr :: Ptr a -> IO (Ptr b)
peekPtr = peek . castPtr

class RString t where
    withRString :: t -> (Ptr CChar -> IO a) -> IO a

instance RString String where
    withRString s m = withCString s m

instance RString CString where
    withRString cs m = m cs

--{#pointer *ppm_t as PpmData newtype#}
--ppmWidth (PpmData d) {#get PpmData->width #} d

{#fun unsafe read_ppm_file as ^ `(RString s)' => {withRString* `s', alloca- `CUInt' peek*} -> `()'#}
