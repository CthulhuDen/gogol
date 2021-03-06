{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types.Product where

import           Network.Google.Container.Types.Sum
import           Network.Google.Prelude

-- | Configuration options for the horizontal pod autoscaling feature, which
-- increases or decreases the number of replica pods a replication
-- controller has based on the resource usage of the existing pods.
--
-- /See:/ 'horizontalPodAutoscaling' smart constructor.
newtype HorizontalPodAutoscaling = HorizontalPodAutoscaling'
    { _hpaDisabled :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HorizontalPodAutoscaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpaDisabled'
horizontalPodAutoscaling
    :: HorizontalPodAutoscaling
horizontalPodAutoscaling =
    HorizontalPodAutoscaling'
    { _hpaDisabled = Nothing
    }

-- | Whether the Horizontal Pod Autoscaling feature is enabled in the
-- cluster. When enabled, it ensures that a Heapster pod is running in the
-- cluster, which is also used by the Cloud Monitoring service.
hpaDisabled :: Lens' HorizontalPodAutoscaling (Maybe Bool)
hpaDisabled
  = lens _hpaDisabled (\ s a -> s{_hpaDisabled = a})

instance FromJSON HorizontalPodAutoscaling where
        parseJSON
          = withObject "HorizontalPodAutoscaling"
              (\ o ->
                 HorizontalPodAutoscaling' <$> (o .:? "disabled"))

instance ToJSON HorizontalPodAutoscaling where
        toJSON HorizontalPodAutoscaling'{..}
          = object
              (catMaybes [("disabled" .=) <$> _hpaDisabled])

-- | ListOperationsResponse is the result of ListOperationsRequest.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse'
    { _lorOperations   :: !(Maybe [Operation])
    , _lorMissingZones :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorOperations'
--
-- * 'lorMissingZones'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
    ListOperationsResponse'
    { _lorOperations = Nothing
    , _lorMissingZones = Nothing
    }

-- | A list of operations in the project in the specified zone.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

-- | If any zones are listed here, the list of operations returned may be
-- missing the operations from those zones.
lorMissingZones :: Lens' ListOperationsResponse [Text]
lorMissingZones
  = lens _lorMissingZones
      (\ s a -> s{_lorMissingZones = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "operations" .!= mempty) <*>
                     (o .:? "missingZones" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("operations" .=) <$> _lorOperations,
                  ("missingZones" .=) <$> _lorMissingZones])

-- | CreateClusterRequest creates a cluster.
--
-- /See:/ 'createClusterRequest' smart constructor.
newtype CreateClusterRequest = CreateClusterRequest'
    { _ccrCluster :: Maybe Cluster
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrCluster'
createClusterRequest
    :: CreateClusterRequest
createClusterRequest =
    CreateClusterRequest'
    { _ccrCluster = Nothing
    }

-- | A [cluster
-- resource](\/container-engine\/reference\/rest\/v1\/projects.zones.clusters)
ccrCluster :: Lens' CreateClusterRequest (Maybe Cluster)
ccrCluster
  = lens _ccrCluster (\ s a -> s{_ccrCluster = a})

instance FromJSON CreateClusterRequest where
        parseJSON
          = withObject "CreateClusterRequest"
              (\ o -> CreateClusterRequest' <$> (o .:? "cluster"))

instance ToJSON CreateClusterRequest where
        toJSON CreateClusterRequest'{..}
          = object (catMaybes [("cluster" .=) <$> _ccrCluster])

-- | A Google Container Engine cluster.
--
-- /See:/ 'cluster' smart constructor.
data Cluster = Cluster'
    { _cStatus                :: !(Maybe Text)
    , _cNodePools             :: !(Maybe [NodePool])
    , _cNodeConfig            :: !(Maybe NodeConfig)
    , _cNodeIPv4CIdRSize      :: !(Maybe (Textual Int32))
    , _cClusterIPv4CIdR       :: !(Maybe Text)
    , _cInitialNodeCount      :: !(Maybe (Textual Int32))
    , _cCurrentNodeVersion    :: !(Maybe Text)
    , _cNetwork               :: !(Maybe Text)
    , _cInitialClusterVersion :: !(Maybe Text)
    , _cZone                  :: !(Maybe Text)
    , _cAddonsConfig          :: !(Maybe AddonsConfig)
    , _cServicesIPv4CIdR      :: !(Maybe Text)
    , _cMasterAuth            :: !(Maybe MasterAuth)
    , _cSelfLink              :: !(Maybe Text)
    , _cName                  :: !(Maybe Text)
    , _cCurrentMasterVersion  :: !(Maybe Text)
    , _cStatusMessage         :: !(Maybe Text)
    , _cSubnetwork            :: !(Maybe Text)
    , _cCurrentNodeCount      :: !(Maybe (Textual Int32))
    , _cEndpoint              :: !(Maybe Text)
    , _cLocations             :: !(Maybe [Text])
    , _cLoggingService        :: !(Maybe Text)
    , _cDescription           :: !(Maybe Text)
    , _cInstanceGroupURLs     :: !(Maybe [Text])
    , _cMonitoringService     :: !(Maybe Text)
    , _cCreateTime            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cNodePools'
--
-- * 'cNodeConfig'
--
-- * 'cNodeIPv4CIdRSize'
--
-- * 'cClusterIPv4CIdR'
--
-- * 'cInitialNodeCount'
--
-- * 'cCurrentNodeVersion'
--
-- * 'cNetwork'
--
-- * 'cInitialClusterVersion'
--
-- * 'cZone'
--
-- * 'cAddonsConfig'
--
-- * 'cServicesIPv4CIdR'
--
-- * 'cMasterAuth'
--
-- * 'cSelfLink'
--
-- * 'cName'
--
-- * 'cCurrentMasterVersion'
--
-- * 'cStatusMessage'
--
-- * 'cSubnetwork'
--
-- * 'cCurrentNodeCount'
--
-- * 'cEndpoint'
--
-- * 'cLocations'
--
-- * 'cLoggingService'
--
-- * 'cDescription'
--
-- * 'cInstanceGroupURLs'
--
-- * 'cMonitoringService'
--
-- * 'cCreateTime'
cluster
    :: Cluster
cluster =
    Cluster'
    { _cStatus = Nothing
    , _cNodePools = Nothing
    , _cNodeConfig = Nothing
    , _cNodeIPv4CIdRSize = Nothing
    , _cClusterIPv4CIdR = Nothing
    , _cInitialNodeCount = Nothing
    , _cCurrentNodeVersion = Nothing
    , _cNetwork = Nothing
    , _cInitialClusterVersion = Nothing
    , _cZone = Nothing
    , _cAddonsConfig = Nothing
    , _cServicesIPv4CIdR = Nothing
    , _cMasterAuth = Nothing
    , _cSelfLink = Nothing
    , _cName = Nothing
    , _cCurrentMasterVersion = Nothing
    , _cStatusMessage = Nothing
    , _cSubnetwork = Nothing
    , _cCurrentNodeCount = Nothing
    , _cEndpoint = Nothing
    , _cLocations = Nothing
    , _cLoggingService = Nothing
    , _cDescription = Nothing
    , _cInstanceGroupURLs = Nothing
    , _cMonitoringService = Nothing
    , _cCreateTime = Nothing
    }

-- | [Output only] The current status of this cluster.
cStatus :: Lens' Cluster (Maybe Text)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The node pools associated with this cluster. When creating a new
-- cluster, only a single node pool should be specified. This field should
-- not be set if \"node_config\" or \"initial_node_count\" are specified.
cNodePools :: Lens' Cluster [NodePool]
cNodePools
  = lens _cNodePools (\ s a -> s{_cNodePools = a}) .
      _Default
      . _Coerce

-- | Parameters used in creating the cluster\'s nodes. See \`nodeConfig\` for
-- the description of its properties. For requests, this field should only
-- be used in lieu of a \"node_pool\" object, since this configuration
-- (along with the \"initial_node_count\") will be used to create a
-- \"NodePool\" object with an auto-generated name. Do not use this and a
-- node_pool at the same time. For responses, this field will be populated
-- with the node configuration of the first node pool. If unspecified, the
-- defaults are used.
cNodeConfig :: Lens' Cluster (Maybe NodeConfig)
cNodeConfig
  = lens _cNodeConfig (\ s a -> s{_cNodeConfig = a})

-- | [Output only] The size of the address space on each node for hosting
-- containers. This is provisioned from within the \`container_ipv4_cidr\`
-- range.
cNodeIPv4CIdRSize :: Lens' Cluster (Maybe Int32)
cNodeIPv4CIdRSize
  = lens _cNodeIPv4CIdRSize
      (\ s a -> s{_cNodeIPv4CIdRSize = a})
      . mapping _Coerce

-- | The IP address range of the container pods in this cluster, in
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`10.96.0.0\/14\`). Leave blank to have one automatically
-- chosen or specify a \`\/14\` block in \`10.0.0.0\/8\`.
cClusterIPv4CIdR :: Lens' Cluster (Maybe Text)
cClusterIPv4CIdR
  = lens _cClusterIPv4CIdR
      (\ s a -> s{_cClusterIPv4CIdR = a})

-- | The number of nodes to create in this cluster. You must ensure that your
-- Compute Engine resource quota is sufficient for this number of
-- instances. You must also have available firewall and routes quota. For
-- requests, this field should only be used in lieu of a \"node_pool\"
-- object, since this configuration (along with the \"node_config\") will
-- be used to create a \"NodePool\" object with an auto-generated name. Do
-- not use this and a node_pool at the same time.
cInitialNodeCount :: Lens' Cluster (Maybe Int32)
cInitialNodeCount
  = lens _cInitialNodeCount
      (\ s a -> s{_cInitialNodeCount = a})
      . mapping _Coerce

-- | [Output only] The current version of the node software components. If
-- they are currently at multiple versions because they\'re in the process
-- of being upgraded, this reflects the minimum version of all nodes.
cCurrentNodeVersion :: Lens' Cluster (Maybe Text)
cCurrentNodeVersion
  = lens _cCurrentNodeVersion
      (\ s a -> s{_cCurrentNodeVersion = a})

-- | The name of the Google Compute Engine
-- [network](\/compute\/docs\/networks-and-firewalls#networks) to which the
-- cluster is connected. If left unspecified, the \`default\` network will
-- be used.
cNetwork :: Lens' Cluster (Maybe Text)
cNetwork = lens _cNetwork (\ s a -> s{_cNetwork = a})

-- | [Output only] The software version of the master endpoint and kubelets
-- used in the cluster when it was first created. The version can be
-- upgraded over time.
cInitialClusterVersion :: Lens' Cluster (Maybe Text)
cInitialClusterVersion
  = lens _cInitialClusterVersion
      (\ s a -> s{_cInitialClusterVersion = a})

-- | [Output only] The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the cluster resides.
cZone :: Lens' Cluster (Maybe Text)
cZone = lens _cZone (\ s a -> s{_cZone = a})

-- | Configurations for the various addons available to run in the cluster.
cAddonsConfig :: Lens' Cluster (Maybe AddonsConfig)
cAddonsConfig
  = lens _cAddonsConfig
      (\ s a -> s{_cAddonsConfig = a})

-- | [Output only] The IP address range of the Kubernetes services in this
-- cluster, in
-- [CIDR](http:\/\/en.wikipedia.org\/wiki\/Classless_Inter-Domain_Routing)
-- notation (e.g. \`1.2.3.4\/29\`). Service addresses are typically put in
-- the last \`\/16\` from the container CIDR.
cServicesIPv4CIdR :: Lens' Cluster (Maybe Text)
cServicesIPv4CIdR
  = lens _cServicesIPv4CIdR
      (\ s a -> s{_cServicesIPv4CIdR = a})

-- | The authentication information for accessing the master endpoint.
cMasterAuth :: Lens' Cluster (Maybe MasterAuth)
cMasterAuth
  = lens _cMasterAuth (\ s a -> s{_cMasterAuth = a})

-- | [Output only] Server-defined URL for the resource.
cSelfLink :: Lens' Cluster (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | The name of this cluster. The name must be unique within this project
-- and zone, and can be up to 40 characters with the following
-- restrictions: * Lowercase letters, numbers, and hyphens only. * Must
-- start with a letter. * Must end with a number or a letter.
cName :: Lens' Cluster (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | [Output only] The current software version of the master endpoint.
cCurrentMasterVersion :: Lens' Cluster (Maybe Text)
cCurrentMasterVersion
  = lens _cCurrentMasterVersion
      (\ s a -> s{_cCurrentMasterVersion = a})

-- | [Output only] Additional information about the current status of this
-- cluster, if available.
cStatusMessage :: Lens' Cluster (Maybe Text)
cStatusMessage
  = lens _cStatusMessage
      (\ s a -> s{_cStatusMessage = a})

-- | The name of the Google Compute Engine
-- [subnetwork](\/compute\/docs\/subnetworks) to which the cluster is
-- connected.
cSubnetwork :: Lens' Cluster (Maybe Text)
cSubnetwork
  = lens _cSubnetwork (\ s a -> s{_cSubnetwork = a})

-- | [Output only] The number of nodes currently in the cluster.
cCurrentNodeCount :: Lens' Cluster (Maybe Int32)
cCurrentNodeCount
  = lens _cCurrentNodeCount
      (\ s a -> s{_cCurrentNodeCount = a})
      . mapping _Coerce

-- | [Output only] The IP address of this cluster\'s master endpoint. The
-- endpoint can be accessed from the internet at
-- \`https:\/\/username:password\'endpoint\/\`. See the \`masterAuth\`
-- property of this resource for username and password information.
cEndpoint :: Lens' Cluster (Maybe Text)
cEndpoint
  = lens _cEndpoint (\ s a -> s{_cEndpoint = a})

-- | The list of Google Compute Engine
-- [locations](\/compute\/docs\/zones#available) in which the cluster\'s
-- nodes should be located.
cLocations :: Lens' Cluster [Text]
cLocations
  = lens _cLocations (\ s a -> s{_cLocations = a}) .
      _Default
      . _Coerce

-- | The logging service the cluster should use to write logs. Currently
-- available options: * \`logging.googleapis.com\` - the Google Cloud
-- Logging service. * \`none\` - no logs will be exported from the cluster.
-- * if left as an empty string,\`logging.googleapis.com\` will be used.
cLoggingService :: Lens' Cluster (Maybe Text)
cLoggingService
  = lens _cLoggingService
      (\ s a -> s{_cLoggingService = a})

-- | An optional description of this cluster.
cDescription :: Lens' Cluster (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

-- | [Output only] The resource URLs of [instance
-- groups](\/compute\/docs\/instance-groups\/) associated with this
-- cluster.
cInstanceGroupURLs :: Lens' Cluster [Text]
cInstanceGroupURLs
  = lens _cInstanceGroupURLs
      (\ s a -> s{_cInstanceGroupURLs = a})
      . _Default
      . _Coerce

-- | The monitoring service the cluster should use to write metrics.
-- Currently available options: * \`monitoring.googleapis.com\` - the
-- Google Cloud Monitoring service. * \`none\` - no metrics will be
-- exported from the cluster. * if left as an empty string,
-- \`monitoring.googleapis.com\` will be used.
cMonitoringService :: Lens' Cluster (Maybe Text)
cMonitoringService
  = lens _cMonitoringService
      (\ s a -> s{_cMonitoringService = a})

-- | [Output only] The time the cluster was created, in
-- [RFC3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) text format.
cCreateTime :: Lens' Cluster (Maybe Text)
cCreateTime
  = lens _cCreateTime (\ s a -> s{_cCreateTime = a})

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ o ->
                 Cluster' <$>
                   (o .:? "status") <*> (o .:? "nodePools" .!= mempty)
                     <*> (o .:? "nodeConfig")
                     <*> (o .:? "nodeIpv4CidrSize")
                     <*> (o .:? "clusterIpv4Cidr")
                     <*> (o .:? "initialNodeCount")
                     <*> (o .:? "currentNodeVersion")
                     <*> (o .:? "network")
                     <*> (o .:? "initialClusterVersion")
                     <*> (o .:? "zone")
                     <*> (o .:? "addonsConfig")
                     <*> (o .:? "servicesIpv4Cidr")
                     <*> (o .:? "masterAuth")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "currentMasterVersion")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "currentNodeCount")
                     <*> (o .:? "endpoint")
                     <*> (o .:? "locations" .!= mempty)
                     <*> (o .:? "loggingService")
                     <*> (o .:? "description")
                     <*> (o .:? "instanceGroupUrls" .!= mempty)
                     <*> (o .:? "monitoringService")
                     <*> (o .:? "createTime"))

instance ToJSON Cluster where
        toJSON Cluster'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus,
                  ("nodePools" .=) <$> _cNodePools,
                  ("nodeConfig" .=) <$> _cNodeConfig,
                  ("nodeIpv4CidrSize" .=) <$> _cNodeIPv4CIdRSize,
                  ("clusterIpv4Cidr" .=) <$> _cClusterIPv4CIdR,
                  ("initialNodeCount" .=) <$> _cInitialNodeCount,
                  ("currentNodeVersion" .=) <$> _cCurrentNodeVersion,
                  ("network" .=) <$> _cNetwork,
                  ("initialClusterVersion" .=) <$>
                    _cInitialClusterVersion,
                  ("zone" .=) <$> _cZone,
                  ("addonsConfig" .=) <$> _cAddonsConfig,
                  ("servicesIpv4Cidr" .=) <$> _cServicesIPv4CIdR,
                  ("masterAuth" .=) <$> _cMasterAuth,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("name" .=) <$> _cName,
                  ("currentMasterVersion" .=) <$>
                    _cCurrentMasterVersion,
                  ("statusMessage" .=) <$> _cStatusMessage,
                  ("subnetwork" .=) <$> _cSubnetwork,
                  ("currentNodeCount" .=) <$> _cCurrentNodeCount,
                  ("endpoint" .=) <$> _cEndpoint,
                  ("locations" .=) <$> _cLocations,
                  ("loggingService" .=) <$> _cLoggingService,
                  ("description" .=) <$> _cDescription,
                  ("instanceGroupUrls" .=) <$> _cInstanceGroupURLs,
                  ("monitoringService" .=) <$> _cMonitoringService,
                  ("createTime" .=) <$> _cCreateTime])

-- | UpdateClusterRequest updates the settings of a cluster.
--
-- /See:/ 'updateClusterRequest' smart constructor.
newtype UpdateClusterRequest = UpdateClusterRequest'
    { _ucrUpdate :: Maybe ClusterUpdate
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrUpdate'
updateClusterRequest
    :: UpdateClusterRequest
updateClusterRequest =
    UpdateClusterRequest'
    { _ucrUpdate = Nothing
    }

-- | A description of the update.
ucrUpdate :: Lens' UpdateClusterRequest (Maybe ClusterUpdate)
ucrUpdate
  = lens _ucrUpdate (\ s a -> s{_ucrUpdate = a})

instance FromJSON UpdateClusterRequest where
        parseJSON
          = withObject "UpdateClusterRequest"
              (\ o -> UpdateClusterRequest' <$> (o .:? "update"))

instance ToJSON UpdateClusterRequest where
        toJSON UpdateClusterRequest'{..}
          = object (catMaybes [("update" .=) <$> _ucrUpdate])

-- | Parameters that describe the nodes in a cluster.
--
-- /See:/ 'nodeConfig' smart constructor.
data NodeConfig = NodeConfig'
    { _ncDiskSizeGb  :: !(Maybe (Textual Int32))
    , _ncOAuthScopes :: !(Maybe [Text])
    , _ncMachineType :: !(Maybe Text)
    , _ncMetadata    :: !(Maybe NodeConfigMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncDiskSizeGb'
--
-- * 'ncOAuthScopes'
--
-- * 'ncMachineType'
--
-- * 'ncMetadata'
nodeConfig
    :: NodeConfig
nodeConfig =
    NodeConfig'
    { _ncDiskSizeGb = Nothing
    , _ncOAuthScopes = Nothing
    , _ncMachineType = Nothing
    , _ncMetadata = Nothing
    }

-- | Size of the disk attached to each node, specified in GB. The smallest
-- allowed disk size is 10GB. If unspecified, the default disk size is
-- 100GB.
ncDiskSizeGb :: Lens' NodeConfig (Maybe Int32)
ncDiskSizeGb
  = lens _ncDiskSizeGb (\ s a -> s{_ncDiskSizeGb = a})
      . mapping _Coerce

-- | The set of Google API scopes to be made available on all of the node VMs
-- under the \"default\" service account. The following scopes are
-- recommended, but not required, and by default are not included: *
-- \`https:\/\/www.googleapis.com\/auth\/compute\` is required for mounting
-- persistent storage on your nodes. *
-- \`https:\/\/www.googleapis.com\/auth\/devstorage.read_only\` is required
-- for communicating with **gcr.io** (the [Google Container
-- Registry](\/container-registry\/)). If unspecified, no scopes are added,
-- unless Cloud Logging or Cloud Monitoring are enabled, in which case
-- their required scopes will be added.
ncOAuthScopes :: Lens' NodeConfig [Text]
ncOAuthScopes
  = lens _ncOAuthScopes
      (\ s a -> s{_ncOAuthScopes = a})
      . _Default
      . _Coerce

-- | The name of a Google Compute Engine [machine
-- type](\/compute\/docs\/machine-types) (e.g. \`n1-standard-1\`). If
-- unspecified, the default machine type is \`n1-standard-1\`.
ncMachineType :: Lens' NodeConfig (Maybe Text)
ncMachineType
  = lens _ncMachineType
      (\ s a -> s{_ncMachineType = a})

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys
-- must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes in
-- length. These are reflected as part of a URL in the metadata server.
-- Additionally, to avoid ambiguity, keys must not conflict with any other
-- metadata keys for the project or be one of the four reserved keys:
-- \"instance-template\", \"kube-env\", \"startup-script\", and
-- \"user-data\" Values are free-form strings, and only have meaning as
-- interpreted by the image running in the instance. The only restriction
-- placed on them is that each value\'s size must be less than or equal to
-- 32 KB. The total size of all keys and values must be less than 512 KB.
ncMetadata :: Lens' NodeConfig (Maybe NodeConfigMetadata)
ncMetadata
  = lens _ncMetadata (\ s a -> s{_ncMetadata = a})

instance FromJSON NodeConfig where
        parseJSON
          = withObject "NodeConfig"
              (\ o ->
                 NodeConfig' <$>
                   (o .:? "diskSizeGb") <*>
                     (o .:? "oauthScopes" .!= mempty)
                     <*> (o .:? "machineType")
                     <*> (o .:? "metadata"))

instance ToJSON NodeConfig where
        toJSON NodeConfig'{..}
          = object
              (catMaybes
                 [("diskSizeGb" .=) <$> _ncDiskSizeGb,
                  ("oauthScopes" .=) <$> _ncOAuthScopes,
                  ("machineType" .=) <$> _ncMachineType,
                  ("metadata" .=) <$> _ncMetadata])

-- | Configuration options for the HTTP (L7) load balancing controller addon,
-- which makes it easy to set up HTTP load balancers for services in a
-- cluster.
--
-- /See:/ 'hTTPLoadBalancing' smart constructor.
newtype HTTPLoadBalancing = HTTPLoadBalancing'
    { _httplbDisabled :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTTPLoadBalancing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httplbDisabled'
hTTPLoadBalancing
    :: HTTPLoadBalancing
hTTPLoadBalancing =
    HTTPLoadBalancing'
    { _httplbDisabled = Nothing
    }

-- | Whether the HTTP Load Balancing controller is enabled in the cluster.
-- When enabled, it runs a small pod in the cluster that manages the load
-- balancers.
httplbDisabled :: Lens' HTTPLoadBalancing (Maybe Bool)
httplbDisabled
  = lens _httplbDisabled
      (\ s a -> s{_httplbDisabled = a})

instance FromJSON HTTPLoadBalancing where
        parseJSON
          = withObject "HTTPLoadBalancing"
              (\ o -> HTTPLoadBalancing' <$> (o .:? "disabled"))

instance ToJSON HTTPLoadBalancing where
        toJSON HTTPLoadBalancing'{..}
          = object
              (catMaybes [("disabled" .=) <$> _httplbDisabled])

-- | This operation resource represents operations that may have happened or
-- are happening on the cluster. All fields are output only.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oStatus        :: !(Maybe Text)
    , _oZone          :: !(Maybe Text)
    , _oSelfLink      :: !(Maybe Text)
    , _oName          :: !(Maybe Text)
    , _oStatusMessage :: !(Maybe Text)
    , _oOperationType :: !(Maybe Text)
    , _oTargetLink    :: !(Maybe Text)
    , _oDetail        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oStatus'
--
-- * 'oZone'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oStatusMessage'
--
-- * 'oOperationType'
--
-- * 'oTargetLink'
--
-- * 'oDetail'
operation
    :: Operation
operation =
    Operation'
    { _oStatus = Nothing
    , _oZone = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oStatusMessage = Nothing
    , _oOperationType = Nothing
    , _oTargetLink = Nothing
    , _oDetail = Nothing
    }

-- | The current status of the operation.
oStatus :: Lens' Operation (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | The name of the Google Compute Engine
-- [zone](\/compute\/docs\/zones#available) in which the operation is
-- taking place.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | Server-defined URL for the resource.
oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | The server-assigned ID for the operation.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | If an error has occurred, a textual description of the error.
oStatusMessage :: Lens' Operation (Maybe Text)
oStatusMessage
  = lens _oStatusMessage
      (\ s a -> s{_oStatusMessage = a})

-- | The operation type.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | Server-defined URL for the target of the operation.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | Detailed operation progress, if available.
oDetail :: Lens' Operation (Maybe Text)
oDetail = lens _oDetail (\ s a -> s{_oDetail = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "status") <*> (o .:? "zone") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "operationType")
                     <*> (o .:? "targetLink")
                     <*> (o .:? "detail"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _oStatus, ("zone" .=) <$> _oZone,
                  ("selfLink" .=) <$> _oSelfLink,
                  ("name" .=) <$> _oName,
                  ("statusMessage" .=) <$> _oStatusMessage,
                  ("operationType" .=) <$> _oOperationType,
                  ("targetLink" .=) <$> _oTargetLink,
                  ("detail" .=) <$> _oDetail])

-- | Configuration for the addons that can be automatically spun up in the
-- cluster, enabling additional functionality.
--
-- /See:/ 'addonsConfig' smart constructor.
data AddonsConfig = AddonsConfig'
    { _acHorizontalPodAutoscaling :: !(Maybe HorizontalPodAutoscaling)
    , _acHTTPLoadBalancing        :: !(Maybe HTTPLoadBalancing)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddonsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acHorizontalPodAutoscaling'
--
-- * 'acHTTPLoadBalancing'
addonsConfig
    :: AddonsConfig
addonsConfig =
    AddonsConfig'
    { _acHorizontalPodAutoscaling = Nothing
    , _acHTTPLoadBalancing = Nothing
    }

-- | Configuration for the horizontal pod autoscaling feature, which
-- increases or decreases the number of replica pods a replication
-- controller has based on the resource usage of the existing pods.
acHorizontalPodAutoscaling :: Lens' AddonsConfig (Maybe HorizontalPodAutoscaling)
acHorizontalPodAutoscaling
  = lens _acHorizontalPodAutoscaling
      (\ s a -> s{_acHorizontalPodAutoscaling = a})

-- | Configuration for the HTTP (L7) load balancing controller addon, which
-- makes it easy to set up HTTP load balancers for services in a cluster.
acHTTPLoadBalancing :: Lens' AddonsConfig (Maybe HTTPLoadBalancing)
acHTTPLoadBalancing
  = lens _acHTTPLoadBalancing
      (\ s a -> s{_acHTTPLoadBalancing = a})

instance FromJSON AddonsConfig where
        parseJSON
          = withObject "AddonsConfig"
              (\ o ->
                 AddonsConfig' <$>
                   (o .:? "horizontalPodAutoscaling") <*>
                     (o .:? "httpLoadBalancing"))

instance ToJSON AddonsConfig where
        toJSON AddonsConfig'{..}
          = object
              (catMaybes
                 [("horizontalPodAutoscaling" .=) <$>
                    _acHorizontalPodAutoscaling,
                  ("httpLoadBalancing" .=) <$> _acHTTPLoadBalancing])

-- | NodePool contains the name and configuration for a cluster\'s node pool.
-- Node pools are a set of nodes (i.e. VM\'s), with a common configuration
-- and specification, under the control of the cluster master. They may
-- have a set of Kubernetes labels applied to them, which may be used to
-- reference them during pod scheduling. They may also be resized up or
-- down, to accommodate the workload.
--
-- /See:/ 'nodePool' smart constructor.
data NodePool = NodePool'
    { _npStatus            :: !(Maybe Text)
    , _npConfig            :: !(Maybe NodeConfig)
    , _npInitialNodeCount  :: !(Maybe (Textual Int32))
    , _npSelfLink          :: !(Maybe Text)
    , _npName              :: !(Maybe Text)
    , _npStatusMessage     :: !(Maybe Text)
    , _npVersion           :: !(Maybe Text)
    , _npInstanceGroupURLs :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodePool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npStatus'
--
-- * 'npConfig'
--
-- * 'npInitialNodeCount'
--
-- * 'npSelfLink'
--
-- * 'npName'
--
-- * 'npStatusMessage'
--
-- * 'npVersion'
--
-- * 'npInstanceGroupURLs'
nodePool
    :: NodePool
nodePool =
    NodePool'
    { _npStatus = Nothing
    , _npConfig = Nothing
    , _npInitialNodeCount = Nothing
    , _npSelfLink = Nothing
    , _npName = Nothing
    , _npStatusMessage = Nothing
    , _npVersion = Nothing
    , _npInstanceGroupURLs = Nothing
    }

-- | The status of the nodes in this pool instance.
npStatus :: Lens' NodePool (Maybe Text)
npStatus = lens _npStatus (\ s a -> s{_npStatus = a})

-- | The node configuration of the pool.
npConfig :: Lens' NodePool (Maybe NodeConfig)
npConfig = lens _npConfig (\ s a -> s{_npConfig = a})

-- | The initial node count for the pool. You must ensure that your Compute
-- Engine resource quota is sufficient for this number of instances. You
-- must also have available firewall and routes quota.
npInitialNodeCount :: Lens' NodePool (Maybe Int32)
npInitialNodeCount
  = lens _npInitialNodeCount
      (\ s a -> s{_npInitialNodeCount = a})
      . mapping _Coerce

-- | Server-defined URL for the resource.
npSelfLink :: Lens' NodePool (Maybe Text)
npSelfLink
  = lens _npSelfLink (\ s a -> s{_npSelfLink = a})

-- | The name of the node pool.
npName :: Lens' NodePool (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

-- | [Output only] Additional information about the current status of this
-- node pool instance, if available.
npStatusMessage :: Lens' NodePool (Maybe Text)
npStatusMessage
  = lens _npStatusMessage
      (\ s a -> s{_npStatusMessage = a})

-- | The version of the Kubernetes of this node.
npVersion :: Lens' NodePool (Maybe Text)
npVersion
  = lens _npVersion (\ s a -> s{_npVersion = a})

-- | [Output only] The resource URLs of [instance
-- groups](\/compute\/docs\/instance-groups\/) associated with this node
-- pool.
npInstanceGroupURLs :: Lens' NodePool [Text]
npInstanceGroupURLs
  = lens _npInstanceGroupURLs
      (\ s a -> s{_npInstanceGroupURLs = a})
      . _Default
      . _Coerce

instance FromJSON NodePool where
        parseJSON
          = withObject "NodePool"
              (\ o ->
                 NodePool' <$>
                   (o .:? "status") <*> (o .:? "config") <*>
                     (o .:? "initialNodeCount")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "statusMessage")
                     <*> (o .:? "version")
                     <*> (o .:? "instanceGroupUrls" .!= mempty))

instance ToJSON NodePool where
        toJSON NodePool'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _npStatus,
                  ("config" .=) <$> _npConfig,
                  ("initialNodeCount" .=) <$> _npInitialNodeCount,
                  ("selfLink" .=) <$> _npSelfLink,
                  ("name" .=) <$> _npName,
                  ("statusMessage" .=) <$> _npStatusMessage,
                  ("version" .=) <$> _npVersion,
                  ("instanceGroupUrls" .=) <$> _npInstanceGroupURLs])

-- | The authentication information for accessing the master endpoint.
-- Authentication can be done using HTTP basic auth or using client
-- certificates.
--
-- /See:/ 'masterAuth' smart constructor.
data MasterAuth = MasterAuth'
    { _maClientKey            :: !(Maybe Text)
    , _maUsername             :: !(Maybe Text)
    , _maClientCertificate    :: !(Maybe Text)
    , _maPassword             :: !(Maybe Text)
    , _maClusterCaCertificate :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MasterAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maClientKey'
--
-- * 'maUsername'
--
-- * 'maClientCertificate'
--
-- * 'maPassword'
--
-- * 'maClusterCaCertificate'
masterAuth
    :: MasterAuth
masterAuth =
    MasterAuth'
    { _maClientKey = Nothing
    , _maUsername = Nothing
    , _maClientCertificate = Nothing
    , _maPassword = Nothing
    , _maClusterCaCertificate = Nothing
    }

-- | [Output only] Base64-encoded private key used by clients to authenticate
-- to the cluster endpoint.
maClientKey :: Lens' MasterAuth (Maybe Text)
maClientKey
  = lens _maClientKey (\ s a -> s{_maClientKey = a})

-- | The username to use for HTTP basic authentication to the master
-- endpoint.
maUsername :: Lens' MasterAuth (Maybe Text)
maUsername
  = lens _maUsername (\ s a -> s{_maUsername = a})

-- | [Output only] Base64-encoded public certificate used by clients to
-- authenticate to the cluster endpoint.
maClientCertificate :: Lens' MasterAuth (Maybe Text)
maClientCertificate
  = lens _maClientCertificate
      (\ s a -> s{_maClientCertificate = a})

-- | The password to use for HTTP basic authentication to the master
-- endpoint. Because the master endpoint is open to the Internet, you
-- should create a strong password.
maPassword :: Lens' MasterAuth (Maybe Text)
maPassword
  = lens _maPassword (\ s a -> s{_maPassword = a})

-- | [Output only] Base64-encoded public certificate that is the root of
-- trust for the cluster.
maClusterCaCertificate :: Lens' MasterAuth (Maybe Text)
maClusterCaCertificate
  = lens _maClusterCaCertificate
      (\ s a -> s{_maClusterCaCertificate = a})

instance FromJSON MasterAuth where
        parseJSON
          = withObject "MasterAuth"
              (\ o ->
                 MasterAuth' <$>
                   (o .:? "clientKey") <*> (o .:? "username") <*>
                     (o .:? "clientCertificate")
                     <*> (o .:? "password")
                     <*> (o .:? "clusterCaCertificate"))

instance ToJSON MasterAuth where
        toJSON MasterAuth'{..}
          = object
              (catMaybes
                 [("clientKey" .=) <$> _maClientKey,
                  ("username" .=) <$> _maUsername,
                  ("clientCertificate" .=) <$> _maClientCertificate,
                  ("password" .=) <$> _maPassword,
                  ("clusterCaCertificate" .=) <$>
                    _maClusterCaCertificate])

-- | The metadata key\/value pairs assigned to instances in the cluster. Keys
-- must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes in
-- length. These are reflected as part of a URL in the metadata server.
-- Additionally, to avoid ambiguity, keys must not conflict with any other
-- metadata keys for the project or be one of the four reserved keys:
-- \"instance-template\", \"kube-env\", \"startup-script\", and
-- \"user-data\" Values are free-form strings, and only have meaning as
-- interpreted by the image running in the instance. The only restriction
-- placed on them is that each value\'s size must be less than or equal to
-- 32 KB. The total size of all keys and values must be less than 512 KB.
--
-- /See:/ 'nodeConfigMetadata' smart constructor.
newtype NodeConfigMetadata = NodeConfigMetadata'
    { _ncmAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeConfigMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncmAddtional'
nodeConfigMetadata
    :: HashMap Text Text -- ^ 'ncmAddtional'
    -> NodeConfigMetadata
nodeConfigMetadata pNcmAddtional_ =
    NodeConfigMetadata'
    { _ncmAddtional = _Coerce # pNcmAddtional_
    }

ncmAddtional :: Lens' NodeConfigMetadata (HashMap Text Text)
ncmAddtional
  = lens _ncmAddtional (\ s a -> s{_ncmAddtional = a})
      . _Coerce

instance FromJSON NodeConfigMetadata where
        parseJSON
          = withObject "NodeConfigMetadata"
              (\ o -> NodeConfigMetadata' <$> (parseJSONObject o))

instance ToJSON NodeConfigMetadata where
        toJSON = toJSON . _ncmAddtional

-- | Container Engine service configuration.
--
-- /See:/ 'serverConfig' smart constructor.
data ServerConfig = ServerConfig'
    { _scValidNodeVersions     :: !(Maybe [Text])
    , _scDefaultImageFamily    :: !(Maybe Text)
    , _scValidImageFamilies    :: !(Maybe [Text])
    , _scDefaultClusterVersion :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scValidNodeVersions'
--
-- * 'scDefaultImageFamily'
--
-- * 'scValidImageFamilies'
--
-- * 'scDefaultClusterVersion'
serverConfig
    :: ServerConfig
serverConfig =
    ServerConfig'
    { _scValidNodeVersions = Nothing
    , _scDefaultImageFamily = Nothing
    , _scValidImageFamilies = Nothing
    , _scDefaultClusterVersion = Nothing
    }

-- | List of valid node upgrade target versions.
scValidNodeVersions :: Lens' ServerConfig [Text]
scValidNodeVersions
  = lens _scValidNodeVersions
      (\ s a -> s{_scValidNodeVersions = a})
      . _Default
      . _Coerce

-- | Default image family.
scDefaultImageFamily :: Lens' ServerConfig (Maybe Text)
scDefaultImageFamily
  = lens _scDefaultImageFamily
      (\ s a -> s{_scDefaultImageFamily = a})

-- | List of valid image families.
scValidImageFamilies :: Lens' ServerConfig [Text]
scValidImageFamilies
  = lens _scValidImageFamilies
      (\ s a -> s{_scValidImageFamilies = a})
      . _Default
      . _Coerce

-- | Version of Kubernetes the service deploys by default.
scDefaultClusterVersion :: Lens' ServerConfig (Maybe Text)
scDefaultClusterVersion
  = lens _scDefaultClusterVersion
      (\ s a -> s{_scDefaultClusterVersion = a})

instance FromJSON ServerConfig where
        parseJSON
          = withObject "ServerConfig"
              (\ o ->
                 ServerConfig' <$>
                   (o .:? "validNodeVersions" .!= mempty) <*>
                     (o .:? "defaultImageFamily")
                     <*> (o .:? "validImageFamilies" .!= mempty)
                     <*> (o .:? "defaultClusterVersion"))

instance ToJSON ServerConfig where
        toJSON ServerConfig'{..}
          = object
              (catMaybes
                 [("validNodeVersions" .=) <$> _scValidNodeVersions,
                  ("defaultImageFamily" .=) <$> _scDefaultImageFamily,
                  ("validImageFamilies" .=) <$> _scValidImageFamilies,
                  ("defaultClusterVersion" .=) <$>
                    _scDefaultClusterVersion])

-- | ListClustersResponse is the result of ListClustersRequest.
--
-- /See:/ 'listClustersResponse' smart constructor.
data ListClustersResponse = ListClustersResponse'
    { _lcrClusters     :: !(Maybe [Cluster])
    , _lcrMissingZones :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrClusters'
--
-- * 'lcrMissingZones'
listClustersResponse
    :: ListClustersResponse
listClustersResponse =
    ListClustersResponse'
    { _lcrClusters = Nothing
    , _lcrMissingZones = Nothing
    }

-- | A list of clusters in the project in the specified zone, or across all
-- ones.
lcrClusters :: Lens' ListClustersResponse [Cluster]
lcrClusters
  = lens _lcrClusters (\ s a -> s{_lcrClusters = a}) .
      _Default
      . _Coerce

-- | If any zones are listed here, the list of clusters returned may be
-- missing those zones.
lcrMissingZones :: Lens' ListClustersResponse [Text]
lcrMissingZones
  = lens _lcrMissingZones
      (\ s a -> s{_lcrMissingZones = a})
      . _Default
      . _Coerce

instance FromJSON ListClustersResponse where
        parseJSON
          = withObject "ListClustersResponse"
              (\ o ->
                 ListClustersResponse' <$>
                   (o .:? "clusters" .!= mempty) <*>
                     (o .:? "missingZones" .!= mempty))

instance ToJSON ListClustersResponse where
        toJSON ListClustersResponse'{..}
          = object
              (catMaybes
                 [("clusters" .=) <$> _lcrClusters,
                  ("missingZones" .=) <$> _lcrMissingZones])

-- | ClusterUpdate describes an update to the cluster. Exactly one update can
-- be applied to a cluster with each request, so at most one field can be
-- provided.
--
-- /See:/ 'clusterUpdate' smart constructor.
data ClusterUpdate = ClusterUpdate'
    { _cuDesiredAddonsConfig      :: !(Maybe AddonsConfig)
    , _cuDesiredNodePoolId        :: !(Maybe Text)
    , _cuDesiredNodeVersion       :: !(Maybe Text)
    , _cuDesiredMasterVersion     :: !(Maybe Text)
    , _cuDesiredMonitoringService :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClusterUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuDesiredAddonsConfig'
--
-- * 'cuDesiredNodePoolId'
--
-- * 'cuDesiredNodeVersion'
--
-- * 'cuDesiredMasterVersion'
--
-- * 'cuDesiredMonitoringService'
clusterUpdate
    :: ClusterUpdate
clusterUpdate =
    ClusterUpdate'
    { _cuDesiredAddonsConfig = Nothing
    , _cuDesiredNodePoolId = Nothing
    , _cuDesiredNodeVersion = Nothing
    , _cuDesiredMasterVersion = Nothing
    , _cuDesiredMonitoringService = Nothing
    }

-- | Configurations for the various addons available to run in the cluster.
cuDesiredAddonsConfig :: Lens' ClusterUpdate (Maybe AddonsConfig)
cuDesiredAddonsConfig
  = lens _cuDesiredAddonsConfig
      (\ s a -> s{_cuDesiredAddonsConfig = a})

-- | The node pool to be upgraded. This field is mandatory if the
-- \"desired_node_version\" or \"desired_image_family\" is specified and
-- there is more than one node pool on the cluster.
cuDesiredNodePoolId :: Lens' ClusterUpdate (Maybe Text)
cuDesiredNodePoolId
  = lens _cuDesiredNodePoolId
      (\ s a -> s{_cuDesiredNodePoolId = a})

-- | The Kubernetes version to change the nodes to (typically an upgrade).
-- Use \`-\` to upgrade to the latest version supported by the server.
cuDesiredNodeVersion :: Lens' ClusterUpdate (Maybe Text)
cuDesiredNodeVersion
  = lens _cuDesiredNodeVersion
      (\ s a -> s{_cuDesiredNodeVersion = a})

-- | The Kubernetes version to change the master to. The only valid value is
-- the latest supported version. Use \"-\" to have the server automatically
-- select the latest version.
cuDesiredMasterVersion :: Lens' ClusterUpdate (Maybe Text)
cuDesiredMasterVersion
  = lens _cuDesiredMasterVersion
      (\ s a -> s{_cuDesiredMasterVersion = a})

-- | The monitoring service the cluster should use to write metrics.
-- Currently available options: * \"monitoring.googleapis.com\" - the
-- Google Cloud Monitoring service * \"none\" - no metrics will be exported
-- from the cluster
cuDesiredMonitoringService :: Lens' ClusterUpdate (Maybe Text)
cuDesiredMonitoringService
  = lens _cuDesiredMonitoringService
      (\ s a -> s{_cuDesiredMonitoringService = a})

instance FromJSON ClusterUpdate where
        parseJSON
          = withObject "ClusterUpdate"
              (\ o ->
                 ClusterUpdate' <$>
                   (o .:? "desiredAddonsConfig") <*>
                     (o .:? "desiredNodePoolId")
                     <*> (o .:? "desiredNodeVersion")
                     <*> (o .:? "desiredMasterVersion")
                     <*> (o .:? "desiredMonitoringService"))

instance ToJSON ClusterUpdate where
        toJSON ClusterUpdate'{..}
          = object
              (catMaybes
                 [("desiredAddonsConfig" .=) <$>
                    _cuDesiredAddonsConfig,
                  ("desiredNodePoolId" .=) <$> _cuDesiredNodePoolId,
                  ("desiredNodeVersion" .=) <$> _cuDesiredNodeVersion,
                  ("desiredMasterVersion" .=) <$>
                    _cuDesiredMasterVersion,
                  ("desiredMonitoringService" .=) <$>
                    _cuDesiredMonitoringService])

-- | ListNodePoolsResponse is the result of ListNodePoolsRequest.
--
-- /See:/ 'listNodePoolsResponse' smart constructor.
newtype ListNodePoolsResponse = ListNodePoolsResponse'
    { _lnprNodePools :: Maybe [NodePool]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListNodePoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnprNodePools'
listNodePoolsResponse
    :: ListNodePoolsResponse
listNodePoolsResponse =
    ListNodePoolsResponse'
    { _lnprNodePools = Nothing
    }

-- | A list of node pools for a cluster.
lnprNodePools :: Lens' ListNodePoolsResponse [NodePool]
lnprNodePools
  = lens _lnprNodePools
      (\ s a -> s{_lnprNodePools = a})
      . _Default
      . _Coerce

instance FromJSON ListNodePoolsResponse where
        parseJSON
          = withObject "ListNodePoolsResponse"
              (\ o ->
                 ListNodePoolsResponse' <$>
                   (o .:? "nodePools" .!= mempty))

instance ToJSON ListNodePoolsResponse where
        toJSON ListNodePoolsResponse'{..}
          = object
              (catMaybes [("nodePools" .=) <$> _lnprNodePools])

-- | CreateNodePoolRequest creates a node pool for a cluster.
--
-- /See:/ 'createNodePoolRequest' smart constructor.
newtype CreateNodePoolRequest = CreateNodePoolRequest'
    { _cnprNodePool :: Maybe NodePool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateNodePoolRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnprNodePool'
createNodePoolRequest
    :: CreateNodePoolRequest
createNodePoolRequest =
    CreateNodePoolRequest'
    { _cnprNodePool = Nothing
    }

-- | The node pool to create.
cnprNodePool :: Lens' CreateNodePoolRequest (Maybe NodePool)
cnprNodePool
  = lens _cnprNodePool (\ s a -> s{_cnprNodePool = a})

instance FromJSON CreateNodePoolRequest where
        parseJSON
          = withObject "CreateNodePoolRequest"
              (\ o ->
                 CreateNodePoolRequest' <$> (o .:? "nodePool"))

instance ToJSON CreateNodePoolRequest where
        toJSON CreateNodePoolRequest'{..}
          = object
              (catMaybes [("nodePool" .=) <$> _cnprNodePool])
