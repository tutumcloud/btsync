# tutum/btsync

[![Deploy to Tutum](https://s.tutum.co/deploy-to-tutum.svg)](https://dashboard.tutum.co/stack/deploy/)

Synchronizes data folders between containers using BitTorrent Sync.

## Usage

    docker run -d tutum/btsync <folder1> <folder2> ... <foldern>

Replacing `<folderi>` with any folder you want to synchronize. Each key will be generated hashing the name of the folder, so this implementation will only scale in LAN mode (as is set in the image).

## Deploy on Tutum

Modify the **volumes_from** list with the name of the service you want to sync and the **target_num_containers** with the number of containers from the service you want to synchronize. If the target service belongs to another stack its service unique name is its service name plus the service stack name, separated by ".".

By default tutum/btsync will syncrhonize all volumes mounted on the containers being created, but you can define the folders to sync as metioned above. All traffic goes through the private network created by Weave.

## Notes

* When a file is added to the shared folder, the changes start syncing immediately. However, it can take up to ten seconds to be seen by the other peer.
* If you change a file inside a shared folder, sync will start after the file is saved and/or closed.
* If several people make changes to the same file it is only saved the latest version of the file.

## License

bittorrent Sync has a propietary license included in:

http://www.bittorrent.com/legal/privacy
http://www.bittorrent.com/legal/terms-of-use
http://www.bittorrent.com/legal/eula