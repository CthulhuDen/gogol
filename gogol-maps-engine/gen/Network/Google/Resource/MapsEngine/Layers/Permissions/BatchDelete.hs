{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Layers.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPermissionsBatchDelete@.
module Network.Google.Resource.MapsEngine.Layers.Permissions.BatchDelete
    (
    -- * REST Resource
      LayersPermissionsBatchDeleteResource

    -- * Creating a Request
    , layersPermissionsBatchDelete'
    , LayersPermissionsBatchDelete'

    -- * Request Lenses
    , lpbdPermissionsBatchDeleteRequest
    , lpbdQuotaUser
    , lpbdPrettyPrint
    , lpbdUserIP
    , lpbdKey
    , lpbdId
    , lpbdOAuthToken
    , lpbdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPermissionsBatchDelete@ which the
-- 'LayersPermissionsBatchDelete'' request conforms to.
type LayersPermissionsBatchDeleteResource =
     "layers" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                             Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'layersPermissionsBatchDelete'' smart constructor.
data LayersPermissionsBatchDelete' = LayersPermissionsBatchDelete'
    { _lpbdPermissionsBatchDeleteRequest :: !PermissionsBatchDeleteRequest
    , _lpbdQuotaUser                     :: !(Maybe Text)
    , _lpbdPrettyPrint                   :: !Bool
    , _lpbdUserIP                        :: !(Maybe Text)
    , _lpbdKey                           :: !(Maybe Key)
    , _lpbdId                            :: !Text
    , _lpbdOAuthToken                    :: !(Maybe OAuthToken)
    , _lpbdFields                        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbdPermissionsBatchDeleteRequest'
--
-- * 'lpbdQuotaUser'
--
-- * 'lpbdPrettyPrint'
--
-- * 'lpbdUserIP'
--
-- * 'lpbdKey'
--
-- * 'lpbdId'
--
-- * 'lpbdOAuthToken'
--
-- * 'lpbdFields'
layersPermissionsBatchDelete'
    :: PermissionsBatchDeleteRequest -- ^ 'PermissionsBatchDeleteRequest'
    -> Text -- ^ 'id'
    -> LayersPermissionsBatchDelete'
layersPermissionsBatchDelete' pLpbdPermissionsBatchDeleteRequest_ pLpbdId_ =
    LayersPermissionsBatchDelete'
    { _lpbdPermissionsBatchDeleteRequest = pLpbdPermissionsBatchDeleteRequest_
    , _lpbdQuotaUser = Nothing
    , _lpbdPrettyPrint = True
    , _lpbdUserIP = Nothing
    , _lpbdKey = Nothing
    , _lpbdId = pLpbdId_
    , _lpbdOAuthToken = Nothing
    , _lpbdFields = Nothing
    }

-- | Multipart request metadata.
lpbdPermissionsBatchDeleteRequest :: Lens' LayersPermissionsBatchDelete' PermissionsBatchDeleteRequest
lpbdPermissionsBatchDeleteRequest
  = lens _lpbdPermissionsBatchDeleteRequest
      (\ s a -> s{_lpbdPermissionsBatchDeleteRequest = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpbdQuotaUser :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdQuotaUser
  = lens _lpbdQuotaUser
      (\ s a -> s{_lpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpbdPrettyPrint :: Lens' LayersPermissionsBatchDelete' Bool
lpbdPrettyPrint
  = lens _lpbdPrettyPrint
      (\ s a -> s{_lpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpbdUserIP :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdUserIP
  = lens _lpbdUserIP (\ s a -> s{_lpbdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpbdKey :: Lens' LayersPermissionsBatchDelete' (Maybe Key)
lpbdKey = lens _lpbdKey (\ s a -> s{_lpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
lpbdId :: Lens' LayersPermissionsBatchDelete' Text
lpbdId = lens _lpbdId (\ s a -> s{_lpbdId = a})

-- | OAuth 2.0 token for the current user.
lpbdOAuthToken :: Lens' LayersPermissionsBatchDelete' (Maybe OAuthToken)
lpbdOAuthToken
  = lens _lpbdOAuthToken
      (\ s a -> s{_lpbdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpbdFields :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdFields
  = lens _lpbdFields (\ s a -> s{_lpbdFields = a})

instance GoogleAuth LayersPermissionsBatchDelete'
         where
        authKey = lpbdKey . _Just
        authToken = lpbdOAuthToken . _Just

instance GoogleRequest LayersPermissionsBatchDelete'
         where
        type Rs LayersPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          LayersPermissionsBatchDelete'{..}
          = go _lpbdQuotaUser (Just _lpbdPrettyPrint)
              _lpbdUserIP
              _lpbdKey
              _lpbdId
              _lpbdOAuthToken
              _lpbdFields
              (Just AltJSON)
              _lpbdPermissionsBatchDeleteRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersPermissionsBatchDeleteResource)
                      r
                      u