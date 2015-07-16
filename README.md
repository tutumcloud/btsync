# btsync

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)

Synchronizes data folders between containers using BitTorrent Sync.

## Deploy on Tutum

Modify the **volumes_from** list with the name of the service you want to synchronize and the **target_num_containers** with the number of containers of the service you want to synchronize. By default tutum/btsync will syncrhonize all volumes mounted on the containers being created.

All traffic goes through the private network created by Weave.

## License

bittorrent Sync has a propietary license included in:

http://www.bittorrent.com/legal/privacy
http://www.bittorrent.com/legal/terms-of-use
http://www.bittorrent.com/legal/eula