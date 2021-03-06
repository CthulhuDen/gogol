{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Sheets.Spreadsheets.Values.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets values in a range of a spreadsheet. The caller must specify the
-- spreadsheet ID, range, and a valueInputOption.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference> for @sheets.spreadsheets.values.update@.
module Network.Google.Resource.Sheets.Spreadsheets.Values.Update
    (
    -- * REST Resource
      SpreadsheetsValuesUpdateResource

    -- * Creating a Request
    , spreadsheetsValuesUpdate
    , SpreadsheetsValuesUpdate

    -- * Request Lenses
    , svuXgafv
    , svuUploadProtocol
    , svuPp
    , svuAccessToken
    , svuSpreadsheetId
    , svuUploadType
    , svuValueInputOption
    , svuPayload
    , svuBearerToken
    , svuRange
    , svuCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types

-- | A resource alias for @sheets.spreadsheets.values.update@ method which the
-- 'SpreadsheetsValuesUpdate' request conforms to.
type SpreadsheetsValuesUpdateResource =
     "v4" :>
       "spreadsheets" :>
         Capture "spreadsheetId" Text :>
           "values" :>
             Capture "range" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "valueInputOption" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ValueRange :>
                                   Put '[JSON] UpdateValuesResponse

-- | Sets values in a range of a spreadsheet. The caller must specify the
-- spreadsheet ID, range, and a valueInputOption.
--
-- /See:/ 'spreadsheetsValuesUpdate' smart constructor.
data SpreadsheetsValuesUpdate = SpreadsheetsValuesUpdate'
    { _svuXgafv            :: !(Maybe Xgafv)
    , _svuUploadProtocol   :: !(Maybe Text)
    , _svuPp               :: !Bool
    , _svuAccessToken      :: !(Maybe Text)
    , _svuSpreadsheetId    :: !Text
    , _svuUploadType       :: !(Maybe Text)
    , _svuValueInputOption :: !(Maybe Text)
    , _svuPayload          :: !ValueRange
    , _svuBearerToken      :: !(Maybe Text)
    , _svuRange            :: !Text
    , _svuCallback         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpreadsheetsValuesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svuXgafv'
--
-- * 'svuUploadProtocol'
--
-- * 'svuPp'
--
-- * 'svuAccessToken'
--
-- * 'svuSpreadsheetId'
--
-- * 'svuUploadType'
--
-- * 'svuValueInputOption'
--
-- * 'svuPayload'
--
-- * 'svuBearerToken'
--
-- * 'svuRange'
--
-- * 'svuCallback'
spreadsheetsValuesUpdate
    :: Text -- ^ 'svuSpreadsheetId'
    -> ValueRange -- ^ 'svuPayload'
    -> Text -- ^ 'svuRange'
    -> SpreadsheetsValuesUpdate
spreadsheetsValuesUpdate pSvuSpreadsheetId_ pSvuPayload_ pSvuRange_ =
    SpreadsheetsValuesUpdate'
    { _svuXgafv = Nothing
    , _svuUploadProtocol = Nothing
    , _svuPp = True
    , _svuAccessToken = Nothing
    , _svuSpreadsheetId = pSvuSpreadsheetId_
    , _svuUploadType = Nothing
    , _svuValueInputOption = Nothing
    , _svuPayload = pSvuPayload_
    , _svuBearerToken = Nothing
    , _svuRange = pSvuRange_
    , _svuCallback = Nothing
    }

-- | V1 error format.
svuXgafv :: Lens' SpreadsheetsValuesUpdate (Maybe Xgafv)
svuXgafv = lens _svuXgafv (\ s a -> s{_svuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svuUploadProtocol :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuUploadProtocol
  = lens _svuUploadProtocol
      (\ s a -> s{_svuUploadProtocol = a})

-- | Pretty-print response.
svuPp :: Lens' SpreadsheetsValuesUpdate Bool
svuPp = lens _svuPp (\ s a -> s{_svuPp = a})

-- | OAuth access token.
svuAccessToken :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuAccessToken
  = lens _svuAccessToken
      (\ s a -> s{_svuAccessToken = a})

-- | The ID of the spreadsheet to update.
svuSpreadsheetId :: Lens' SpreadsheetsValuesUpdate Text
svuSpreadsheetId
  = lens _svuSpreadsheetId
      (\ s a -> s{_svuSpreadsheetId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svuUploadType :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuUploadType
  = lens _svuUploadType
      (\ s a -> s{_svuUploadType = a})

-- | How the input data should be interpreted.
svuValueInputOption :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuValueInputOption
  = lens _svuValueInputOption
      (\ s a -> s{_svuValueInputOption = a})

-- | Multipart request metadata.
svuPayload :: Lens' SpreadsheetsValuesUpdate ValueRange
svuPayload
  = lens _svuPayload (\ s a -> s{_svuPayload = a})

-- | OAuth bearer token.
svuBearerToken :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuBearerToken
  = lens _svuBearerToken
      (\ s a -> s{_svuBearerToken = a})

-- | The A1 notation of the values to update.
svuRange :: Lens' SpreadsheetsValuesUpdate Text
svuRange = lens _svuRange (\ s a -> s{_svuRange = a})

-- | JSONP
svuCallback :: Lens' SpreadsheetsValuesUpdate (Maybe Text)
svuCallback
  = lens _svuCallback (\ s a -> s{_svuCallback = a})

instance GoogleRequest SpreadsheetsValuesUpdate where
        type Rs SpreadsheetsValuesUpdate =
             UpdateValuesResponse
        type Scopes SpreadsheetsValuesUpdate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/spreadsheets"]
        requestClient SpreadsheetsValuesUpdate'{..}
          = go _svuSpreadsheetId _svuRange _svuXgafv
              _svuUploadProtocol
              (Just _svuPp)
              _svuAccessToken
              _svuUploadType
              _svuValueInputOption
              _svuBearerToken
              _svuCallback
              (Just AltJSON)
              _svuPayload
              sheetsService
          where go
                  = buildClient
                      (Proxy :: Proxy SpreadsheetsValuesUpdateResource)
                      mempty
