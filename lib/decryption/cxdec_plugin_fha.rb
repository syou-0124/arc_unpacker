# CXDEC-based plugin for Fate/Hollow Ataraxia.
class CxdecPluginFha
  def key
    [0x143, 0x787]
  end

  def key_derivation_order1
    [0, 1, 2]
  end

  def key_derivation_order2
    [0, 1, 2, 3, 4, 5, 6, 7]
  end

  def key_derivation_order3
    [0, 1, 2, 3, 4, 5]
  end

  def encryption_block
    "\x20\x45\x6e\x63\x72\x79\x70\x74\x69\x6f\x6e\x20\x63\x6f\x6e\x74"\
    "\x72\x6f\x6c\x20\x62\x6c\x6f\x63\x6b\x20\x2d\x2d\x20\x53\x74\x61"\
    "\x74\x69\x63\x61\x6c\x6c\x79\x20\x6f\x72\x20\x64\x79\x6e\x61\x6d"\
    "\x69\x63\x61\x6c\x6c\x79\x2c\x20\x64\x69\x72\x65\x63\x74\x6c\x79"\
    "\x20\x6f\x72\x20\x69\x6e\x64\x69\x72\x65\x63\x74\x6c\x79\x2c\x20"\
    "\x75\x73\x69\x6e\x67\x20\x74\x68\x69\x73\x20\x70\x72\x6f\x67\x72"\
    "\x61\x6d\x20\x61\x6e\x64\x2f\x6f\x72\x20\x62\x6c\x6f\x63\x6b\x20"\
    "\x66\x72\x6f\x6d\x20\x6f\x74\x68\x65\x72\x20\x70\x72\x6f\x67\x72"\
    "\x61\x6d\x73\x20\x77\x69\x6c\x6c\x20\x62\x65\x20\x69\x6c\x6c\x65"\
    "\x67\x61\x6c\x20\x62\x79\x20\x74\x68\x65\x20\x6c\x69\x63\x65\x6e"\
    "\x73\x65\x20\x61\x67\x72\x65\x65\x6d\x65\x6e\x74\x2e\x20\x82\xb1"\
    "\x82\xcc\x83\x76\x83\x8d\x83\x4f\x83\x89\x83\x80\x82\xe2\x83\x75"\
    "\x83\x8d\x83\x62\x83\x4e\x82\xf0\x81\x41\x90\xc3\x93\x49\x82\xc5"\
    "\x82\xa0\x82\xea\x93\xae\x93\x49\x82\xc5\x82\xa0\x82\xea\x81\x41"\
    "\x92\xbc\x90\xda\x93\x49\x82\xc5\x82\xa0\x82\xea\x8a\xd4\x90\xda"\
    "\x93\x49\x82\xc5\x82\xa0\x82\xea\x81\x41\x91\xbc\x82\xcc\x83\x76"\
    "\x83\x8d\x83\x4f\x83\x89\x83\x80\x82\xa9\x82\xe7\x97\x70\x82\xa2"\
    "\x82\xe9\x82\xb1\x82\xc6\x82\xcd\x83\x89\x83\x43\x83\x5a\x83\x93"\
    "\x83\x58\x82\xc9\x82\xe6\x82\xe8\x8b\xd6\x82\xb6\x82\xe7\x82\xea"\
    "\x82\xc4\x82\xa2\x82\xdc\x82\xb7\x81\x42\x0a\x8e\xa9\x91\xee\x82"\
    "\xc9\x8b\x41\x82\xe9\x82\xc6\x96\x85\x82\xaa\x82\xc9\x82\xb1\x82"\
    "\xc9\x82\xb1\x82\xb5\x82\xc4\x8f\x6f\x8c\x7d\x82\xa6\x82\xc4\x82"\
    "\xad\x82\xea\x82\xe9\x81\x42\x0a\x81\x75\x8f\xac\x92\xb0\x82\xcc"\
    "\xe0\x75\x94\xd1\x8b\x6c\x82\xdf\x82\xf0\x83\x5c\x81\x5b\x83\x5a"\
    "\x81\x5b\x83\x57\x82\xcc\x97\x76\x97\xcc\x82\xc5\x82\xe2\x82\xea"\
    "\x82\xce\x20\x6d\x70\x6c\x61\x79\x65\x72\x82\xaa\x8d\xc4\x90\xb6"\
    "\x82\xb3\x82\xea\x81\x41\x91\xe5\x82\xcc\x8e\x9a\x82\xc9\x82\xc8"\
    "\x82\xc1\x82\xbd\x8f\xf3\x91\xd4\x82\xc5\x82\xcc\x81\x41\x8f\x57"\
    "\x92\x63\x82\xc8\x82\xf1\x82\xa9\x95\xcf\x82\xc8\x8a\xb4\x82\xb6"\
    "\x82\xc9\x8b\xdf\x82\xa2\x8f\xf3\x91\xd4\x82\xc5\x82\xcd\x81\x5b"\
    "\x81\x76\x0a\x91\x8a\x95\xcf\x82\xed\x82\xe7\x82\xb8\x89\xbd\x82"\
    "\xf0\x8c\xbe\x82\xc1\x82\xc4\x82\xe9\x82\xcc\x82\xa9\x82\xed\x82"\
    "\xa9\x82\xe7\x82\xc8\x82\xa2\x82\xaa\x81\x41\x82\xbd\x82\xd4\x82"\
    "\xf1\x96\x6c\x82\xf0\x8a\xbd\x8c\x7d\x82\xb5\x82\xc4\x82\xad\x82"\
    "\xea\x82\xc4\x82\xa2\x82\xe9\x82\xcc\x82\xbe\x82\xeb\x82\xa4\x81"\
    "\x42\x94\xde\x8f\x97\x82\xcd\x82\xc8\x82\xc9\x82\xe7\x82\xe2\x82"\
    "\xa4\x82\xea\x82\xb5\x82\xb0\x82\xc9\x81\x75\x82\xdf\x82\xe9\x82"\
    "\xcd\x82\xcd\x82\xdf\x82\xcd\x82\xea\x82\xaf\x81\x4b\x82\xea\x82"\
    "\xaf\x82\xea\x82\xaf\x82\xea\x82\xea\x82\xcd\x82\xea\x82\xcd\x82"\
    "\xcd\x82\xea\x82\xdf\x82\xeb\x82\xdf\x82\xeb\x81\x76\x82\xc6\x8c"\
    "\xbe\x82\xa2\x82\xc8\x82\xaa\x82\xe7\x81\x41\x96\x6c\x82\xcc\x8a"\
    "\x93\x82\xc6\x8f\xe3\x92\x85\x82\xf0\x8e\xf3\x82\xaf\x8e\xe6\x82"\
    "\xc1\x82\xbd\x81\x42\x0a\x0a\x94\xde\x8f\x97\x82\xaa\x82\xb1\x82"\
    "\xa4\x82\xc8\x82\xc1\x82\xc4\x82\xb5\x82\xdc\x82\xc1\x82\xbd\x82"\
    "\xcc\x82\xcd\x82\xbd\x82\xb5\x82\xa9\x88\xea\x83\x96\x8c\x8e\x91"\
    "\x4f\x82\xbe\x82\xc1\x82\xbd\x82\xbe\x82\xeb\x82\xa4\x82\xa9\x81"\
    "\x42\x96\x85\x82\xcd\x97\xbf\x97\x9d\x92\x86\x82\xc9\x82\xb1\x82"\
    "\xf1\x82\xc8\x82\xb1\x82\xc6\x82\xf0\x8c\xfb\x91\x96\x82\xc1\x82"\
    "\xbd\x81\x42\x0a\x81\x75\x8a\xae\x91\x53\x82\xc9\x97\xe2\x82\xdf"\
    "\x82\xbd\x82\xe7\x81\x41\x8d\xbb\x93\x9c\x82\xf0\x20\x31\x35\x67"\
    "\x89\xc1\x82\xa6\x82\xc4\x81\x41\x94\xbc\x95\xaa\x82\xad\x82\xe7"\
    "\x82\xa2\x8d\xac\x82\xb4\x82\xc1\x82\xbd\x82\xc6\x82\xb1\x82\xeb"\
    "\x82\xc5\x81\x41\xe0\x75\x94\xd1\x83\x54\x83\x93\x82\xcd\x81\x41"\
    "\x82\xe0\x82\xa4\x93\xf1\x8e\x4f\x90\x6c\x82\xc5\x82\xb7\x81\x76"\
    "\x0a\x96\x6c\x82\xcd\x82\xa0\x82\xed\x82\xc4\x82\xc4\x97\xbf\x97"\
    "\x9d\x82\xf0\x82\xe2\x82\xdf\x82\xb3\x82\xb9\x81\x41\x94\xde\x8f"\
    "\x97\x82\xf0\x8b\x78\x82\xdc\x82\xb9\x82\xbd\x81\x42\x96\x85\x82"\
    "\xcd\x89\xbd\x8c\xcc\x8e\xa9\x95\xaa\x82\xaa\x97\xbf\x97\x9d\x82"\
    "\xf0\x82\xe2\x82\xdf\x82\xb3\x82\xb9\x82\xe7\x82\xea\x82\xbd\x82"\
    "\xcc\x82\xa9\x97\x9d\x89\xf0\x82\xc5\x82\xab\x82\xc8\x82\xa2\x82"\
    "\xe6\x82\xa4\x82\xc8\x95\x5c\x8f\xee\x82\xbe\x82\xc1\x82\xbd\x82"\
    "\xaa\x81\x41\x82\xbb\x82\xea\x88\xc8\x97\x88\x81\x41\x94\xde\x8f"\
    "\x97\x82\xcc\x8c\xbe\x97\x74\x82\xcd\x97\x9d\x89\xf0\x95\x73\x94"\
    "\x5c\x82\xc9\x82\xc8\x82\xc1\x82\xbd\x81\x42\x0a\x0a\x94\xde\x8f"\
    "\x97\x82\xcd\x8c\xbe\x82\xc1\x82\xc4\x82\xa2\x82\xe9\x82\xb1\x82"\
    "\xc6\x82\xaa\x88\xd3\x96\xa1\x95\x73\x96\xbe\x82\xc8\x82\xbe\x82"\
    "\xaf\x82\xc5\x81\x41\x8e\x76\x8d\x6c\x8e\xa9\x91\xcc\x82\xcd\x82"\
    "\xdc\x82\xc6\x82\xe0\x82\xc8\x82\xe6\x82\xa4\x82\xc8\x82\xcc\x82"\
    "\xc5\x81\x41\x8d\xc5\x8b\xdf\x82\xcd\x82\xa0\x82\xdc\x82\xe8\x96"\
    "\x6c\x82\xe0\x8b\x43\x82\xc9\x82\xb5\x82\xc4\x82\xa2\x82\xc8\x82"\
    "\xa2\x81\x42\x82\xe0\x82\xc6\x82\xe0\x82\xc6\x88\xc0\x95\xa8\x82"\
    "\xbe\x82\xa9\x82\xe7\x81\x41\x82\xc6\x82\xa2\x82\xa4\x82\xcc\x82"\
    "\xe0\x82\xa0\x82\xe9\x81\x42\x82\xc6\x82\xc1\x82\xad\x82\xc9\x8e"\
    "\xf5\x96\xbd\x82\xcd\x89\xdf\x82\xac\x82\xc4\x82\xa2\x82\xe9\x82"\
    "\xed\x82\xaf\x82\xbe\x82\xb5\x81\x41\x97\xbf\x97\x9d\x90\xea\x96"\
    "\xe5\x82\xcc\x83\x41\x83\x93\x83\x68\x83\x8d\x83\x43\x83\x68\x82"\
    "\xc9\x89\xc6\x8e\x96\x91\x53\x94\xca\x82\xf0\x82\xe2\x82\xe7\x82"\
    "\xb9\x82\xc4\x82\xa2\x82\xe9\x82\xf1\x82\xbe\x82\xa9\x82\xe7\x89"\
    "\xdf\x95\x89\x89\xd7\x82\xaa\x82\xa9\x82\xa9\x82\xc1\x82\xc4\x82"\
    "\xe9\x82\xcc\x82\xcd\x95\xaa\x82\xa9\x82\xc1\x82\xc4\x82\xa2\x82"\
    "\xe9\x81\x42\x0a\x0a\x82\xc6\x82\xcd\x8c\xbe\x82\xc1\x82\xc4\x82"\
    "\xe0\x81\x63\x81\x63\x81\x63\x81\x42\x97\xbf\x97\x9d\x92\x86\x82"\
    "\xc9\x81\x75\x82\xc5\x82\xe0\x8e\xe8\x82\xe0\x83\x6c\x83\x6f\x83"\
    "\x6c\x83\x6f\x81\x60\x82\xc2\x82\xa2\x82\xc5\x82\xc9\x8e\x43\x82"\
    "\xc1\x82\xbd\x83\x4d\x83\x55\x83\x4d\x83\x55\x83\x74\x83\x89\x83"\
    "\x43\x83\x70\x83\x93\x82\xe0\x83\x6c\x83\x6f\x83\x6c\x83\x6f\x81"\
    "\x60\x82\xc2\x82\xa2\x82\xc5\x82\xc9\x8e\x43\x82\xc1\x82\xbd\x83"\
    "\x4d\x83\x55\x83\x4d\x83\x55\x83\x74\x83\x89\x83\x43\x83\x70\x83"\
    "\x93\x82\xe0\x83\x6c\x83\x6f\x83\x6c\x83\x6f\x81\x60\x82\xc2\x82"\
    "\xa2\x82\xc5\x82\xc9\x8e\x43\x82\xc1\x82\xbd\x83\x4d\x83\x55\x83"\
    "\x4d\x83\x55\x83\x74\x83\x89\x83\x43\x83\x70\x83\x93\x82\xe0\x83"\
    "\x6c\x83\x6f\x83\x6c\x83\x6f\x81\x60\x82\xc2\x82\xa2\x82\xc5\x82"\
    "\xc9\x8e\x43\x82\xc1\x82\xbd\x83\x4d\x83\x55\x83\x4d\x83\x55\x83"\
    "\x74\x83\x89\x83\x43\x83\x70\x83\x93\x82\xe0\x83\x6c\x83\x6f\x83"\
    "\x6c\x83\x6f\x81\x60\x82\xc2\x82\xa2\x82\xc5\x82\xc9\x8e\x43\x82"\
    "\xc1\x82\xbd\x83\x4d\x83\x55\x83\x4d\x83\x55\x83\x74\x83\x89\x83"\
    "\x43\x83\x70\x83\x93\x82\xe0\x83\x6c\x83\x6f\x83\x6c\x83\x6f\x81"\
    "\x60\x82\xc2\x82\xa2\x82\xc5\x82\xc9\x8e\x43\x82\xc1\x82\xbd\x83"\
    "\x4d\x83\x55\x83\x4d\x83\x55\x83\x74\x83\x89\x83\x43\x83\x70\x83"\
    "\x93\x82\xe0\x83\x6c\x83\x6f\x83\x6c\x83\x6f\x81\x60\x82\xc2\x82"\
    "\xa2\x82\xc5\x82\xc9\x8e\x43\x82\xc1\x82\xbd\x83\x4d\x83\x55\x83"\
    "\x4d\x83\x55\x83\x74\x83\x89\x83\x43\x83\x70\x83\x93\x82\xe0\x83"\
    "\x6c\x83\x6f\x83\x6c\x83\x6f\x81\x60\x82\xc2\x82\xa2\x82\xc5\x82"\
    "\xc9\x8e\x43\x82\xc1\x82\xbd\x83\x4d\x83\x55\x83\x4d\x83\x55\x83"\
    "\x74\x83\x89\x83\x43\x83\x70\x83\x93\x82\xe0\x83\x6c\x83\x6f\x83"\
    "\x6c\x83\x6f\x81\x60\x81\x76\x82\xc6\x82\xa9\x95\x40\x89\xcc\x8d"\
    "\xac\x82\xb6\x82\xe8\x82\xc5\x89\xcc\x82\xed\x82\xea\x82\xe9\x82"\
    "\xc6\x81\x41\x82\xa2\x82\xc1\x82\xbd\x82\xa2\x89\xbd\x82\xf0\x90"\
    "\x48\x82\xed\x82\xb3\x82\xea\x82\xe9\x82\xcc\x82\xa9\x94\xf1\x8f"\
    "\xed\x82\xc9\x95\x73\x88\xc0\x82\xc9\x82\xc8\x82\xe9\x81\x42\x0a"\
    "\xe3\xda\x52\x33\xc8\xbb\x7f\xfe\xe2\x26\x07\x53\x5c\x6a\x0b\x0b"\
    "\x1b\x7c\x8e\x3f\xa6\xeb\x83\x9e\x6b\xd1\x62\xd8\x47\x3c\x83\x96"\
    "\x82\xab\xfa\x90\x7d\x88\xdd\x68\x2e\x74\xdb\x1a\x33\x42\x14\x4a"\
    "\x89\x34\x5e\x7d\x8b\x85\x97\x9b\x74\x3e\xca\x31\xaf\xa1\x6f\x17"\
    "\x31\x2d\x00\x50\xb3\x50\xed\xc9\x32\xf0\x43\x0b\x00\x90\x7a\x9b"\
    "\x38\xf3\x2a\x15\x6e\x12\x99\xaf\x30\xf5\xf0\x84\x2b\x3f\x34\xef"\
    "\x03\x39\xa7\x56\xf7\x8f\x8f\x1b\x95\x9c\xed\x2c\x9e\xcc\xf3\x2b"\
    "\xd2\x2b\xf9\x50\x2d\xf7\x97\xc0\x1b\x94\x86\x31\xa9\x6b\x8f\x74"\
    "\xb7\x6d\x1a\x05\x67\x24\x22\x49\x96\x97\x0a\x48\x42\x72\x49\xeb"\
    "\x53\x26\xa4\xa1\xbc\x2e\x73\x23\x71\x91\x7b\xbe\xde\x5c\x79\x40"\
    "\x4c\xa8\x47\xe7\x7a\x74\x4c\xb2\x33\x7c\x5f\xac\x9e\x94\xcc\xae"\
    "\x1e\xbc\xdd\x79\x1e\x04\xb8\x1f\x86\x72\x2b\x32\x41\x4c\xc5\x51"\
    "\x44\x22\xdb\x9a\x25\x66\xb7\x19\x82\x3d\x98\xfc\xbc\x46\x5c\x20"\
    "\x1b\x1e\x63\x0f\x32\xdc\xf0\xe4\x01\x95\x00\xda\xda\xf9\x15\x7d"\
    "\x09\x21\xee\x3f\xb7\xf4\x9f\xe8\x6c\xf1\x22\x2c\xba\x20\x72\xab"\
    "\x20\xbf\x11\xb0\xd1\x9a\xd9\xc3\x0d\x69\x6c\x16\x8d\xb7\x22\x58"\
    "\x55\x13\x59\x4b\xdd\x6f\x25\x59\x2c\xf2\x2e\x09\x79\x9e\x07\xd1"\
    "\x1c\xd4\x3f\xb9\x30\x27\x48\x62\xa6\x33\xef\x0b\xb9\xaa\x3a\x0e"\
    "\xe9\x3b\x36\x38\x1e\x3b\x82\xad\x15\x5e\xd4\xdf\x6c\x21\x29\xa6"\
    "\x9f\x3a\x5d\xd1\x95\x83\x73\xec\x63\xc9\x74\xe0\x17\x0e\x2c\x0e"\
    "\xd7\x8c\x89\x11\x01\xbf\x6b\x67\x3a\x27\x3c\x91\xae\x0e\x7c\x54"\
    "\x52\xef\xee\x1b\x8a\x7d\x27\xcc\x97\xd9\x27\x61\xc1\x72\xdc\x19"\
    "\xc9\x4f\x16\x0b\xe3\xe5\x30\x20\x44\x52\x95\xa6\x6d\x4e\xa4\x48"\
    "\x9d\x38\xc8\x64\xdd\xfc\x32\x87\x2e\x53\x27\x3f\xa8\x78\x92\x58"\
    "\xa8\xf2\xe5\x58\x33\xaf\xb3\x01\x30\xbb\xd0\x27\x19\xdc\x5d\x71"\
    "\xfd\x19\x17\x8c\xef\xb8\xf8\xb0\x36\xea\x68\xf0\xbe\xc7\xae\xb4"\
    "\xf5\xa6\x64\x73\x25\xee\xd7\x4d\x7f\xce\x34\xe4\xe7\x0a\x45\x14"\
    "\x44\x70\x4a\x75\x48\x00\x71\xf3\x54\x27\x01\xe9\xca\x09\x0c\x9d"\
    "\xd3\xde\x93\x69\x33\x5b\x16\xd5\x84\x4e\x5b\xbd\x52\x3b\x90\x1a"\
    "\xc9\x5a\x23\x58\x81\xa6\x17\x3d\x6c\xa4\x5f\xf8\xa9\xcc\x54\xd6"\
    "\x7c\xb5\x79\xdb\xe7\x43\x00\x84\xaa\x42\x70\x2a\x63\x29\x72\xd1"\
    "\xb3\xbb\xba\x3e\x79\xff\x7b\xce\xaa\xd4\x32\x3d\x78\x34\x2c\xf4"\
    "\x99\x19\x2b\xfe\x73\x63\xf2\x03\x9b\x73\x08\xb5\xcf\x20\x67\xfb"\
    "\x91\x18\x69\x09\x52\xc2\x0e\x4e\xfc\xb8\x7d\xae\x9b\x25\x51\x63"\
    "\xda\x78\xda\x1c\x99\x0f\xa6\x03\x1a\x7f\x79\x7c\xda\x70\x6d\xc9"\
    "\x77\x1f\x5e\xe9\xc0\x41\x5b\xa7\xe5\xab\xe9\xc1\x88\x5e\x63\x62"\
    "\xd4\xdb\x34\x92\x64\x7f\x92\x87\x8a\x97\x8c\x32\x8d\xef\x15\x55"\
    "\xe7\xbe\x9f\x68\x20\x0a\xeb\xc5\x8a\x48\xf1\x02\xdb\x59\x97\x03"\
    "\x6e\x47\x7f\x01\x1e\xef\x85\xe8\xe5\x43\xde\x4d\xb6\x84\x57\xdd"\
    "\x4c\x27\xf0\x91\x5f\x05\x8e\x6b\xa9\xee\x87\x23\x44\xaa\x26\x2e"\
    "\xe2\x1b\x94\x0f\x27\x9e\xa0\x51\x66\x1c\xb2\xc5\x34\xec\x3e\x71"\
    "\x75\xe3\xec\x32\x30\xda\x97\xae\x3e\xd2\xdb\x58\x36\xc9\x8c\x4d"\
    "\x82\xd7\x20\x84\x35\x2f\x49\xc1\x91\x10\x9e\xec\x8e\x77\xd6\x26"\
    "\x71\x8a\xd3\x2f\x89\xc5\xed\xf9\xdd\x3b\x08\x19\x68\x2f\x18\x8e"\
    "\x61\x43\xa4\x3f\xfe\xdc\xb8\x0d\x27\x52\x7b\xe2\xdd\x4b\x44\xd5"\
    "\x68\x0e\x39\xff\x72\x6b\x5d\x39\x6c\x46\x39\xf1\x23\x5b\x40\xb6"\
    "\xa6\xe4\xe5\x9f\x90\x1c\xfd\x5c\xd0\x56\xf8\x1e\xfe\x1f\xbd\x6b"\
    "\x52\xf0\x72\xae\x4c\x70\x45\x9f\xd6\xa2\x1f\x82\x59\xdf\xfd\x99"\
    "\xcd\x1a\xfa\xdc\x59\xc3\xe6\x2b\x1d\x37\x96\x69\x92\xb1\x7b\x66"\
    "\x2f\x09\xdc\x5a\x77\x7d\x89\xc2\x59\x55\x7b\x00\x8b\xa2\x49\x24"\
    "\x57\x54\xd3\x2d\xa0\xe3\x1a\x79\x5c\x34\x1c\x63\xce\x41\xce\x5f"\
    "\x7e\x73\x14\x38\xab\xd1\xd1\x8c\xc9\xf5\x28\xe4\x83\x1f\x46\x54"\
    "\x15\xd9\x9f\xe0\x2b\xa1\x93\x0a\xa2\xcf\xa2\xae\x8a\x71\x97\x2d"\
    "\x16\x0c\x8d\x0d\x80\x7b\x96\xa9\x3b\x6f\x80\x28\x4a\xa3\x9a\x3e"\
    "\xf1\x00\xe3\x67\x16\x8d\xde\x35\xc8\x7e\x19\x7f\xe7\x7f\x3d\xfb"\
    "\xe1\x09\x5e\xe8\x67\x23\xfa\xac\x5b\x73\xf4\xed\x7e\x92\x69\x37"\
    "\x96\x77\x47\xb7\x93\xb4\x1c\x66\xb9\xc8\x7e\x32\x02\x62\x3a\x5d"\
    "\x8b\x30\x72\x53\xcf\x41\x21\xfc\xf6\x75\x87\x6a\x96\xd3\x03\x1a"\
    "\xc2\x30\x4a\x89\x16\xa9\x73\x9e\x07\x20\x6d\x25\x62\x6e\x9e\x26"\
    "\x57\x1c\xf9\xb7\x00\x64\x2f\xf1\xf1\xbe\x12\x53\x06\x4f\x87\x97"\
    "\x8c\x5f\x2d\xaa\x56\x15\x1c\xa0\x58\xf4\x7b\x79\x91\x05\xf9\xae"\
    "\xaa\x7b\xf4\x46\xd4\x9c\xf2\xb8\x70\x27\xc0\x37\x9a\x05\x5b\x2f"\
    "\xd8\x8d\xb3\x7c\x9e\xf2\xe5\x82\x92\x8b\x59\x65\x5a\x62\xf2\x24"\
    "\x7f\xd2\x3b\x8f\x6a\x7f\x88\x66\x61\x64\x81\xf5\x31\x48\xe6\xb9"\
    "\xa4\xd6\x66\xf4\xe0\xd2\x6e\x43\x33\x82\xc6\xb3\x2f\x81\x94\x06"\
    "\x92\x68\x69\xef\x23\x87\x56\x4e\x70\xb5\x99\xc4\x3e\xfe\x24\xe1"\
    "\xaf\x2e\xa3\x9a\x20\x95\xae\x21\x8c\xf2\x5a\xc2\x16\x70\xfe\x2b"\
    "\xb6\x46\x6c\x1c\xf4\x91\x43\x4a\x61\x35\xa1\xa8\x09\xe1\x75\xa6"\
    "\xcc\x97\xe9\x0d\xa6\xb6\xdd\xdf\xf2\x60\x00\xb5\xd8\xd8\x51\xbb"\
    "\x8f\xcd\x09\xcb\x2a\xff\x49\x09\x98\x40\x42\x01\xdc\xc1\xd0\x59"\
    "\xa5\x6b\x10\x2f\xff\x2f\x8a\x97\x8b\x62\xe3\xb0\x02\x9d\xc4\xb3"\
    "\xc9\x6e\x93\xf8\x91\xe7\x48\x8c\x94\x75\x40\xad\x58\xbf\x2b\x21"\
    "\xe3\x18\x2f\x62\xc9\x7f\x95\xb3\x17\x83\x37\xfe\x33\x7f\xa3\x95"\
    "\x10\x73\x7a\x00\x1b\x30\xb4\x29\x90\x48\xdb\xd2\x2e\x94\x93\x2c"\
    "\x86\x5e\xb3\x63\x49\x3b\x25\x73\x15\x0e\xc0\xff\xb3\x4c\x3a\x22"\
    "\xe5\xb4\x29\xea\xe0\xeb\x05\x0a\xe0\x40\xed\xa7\xa6\xf8\x2a\x64"\
    "\x73\x43\xdf\x3d\x0a\x49\xb1\x6c\x19\xf7\x2a\x93\xdb\x2b\x9d\x37"\
    "\xaf\x62\xa4\x3c\xaa\xe7\x75\xac\xab\xbc\xe2\x78\x5c\xaa\x92\xd0"\
    "\xe0\x0e\x34\x52\x93\xa5\x58\x04\x0e\xd4\x62\xf2\x47\x82\xb0\xbe"\
    "\xa8\x3e\x83\xc1\x05\xbb\x45\x62\x1b\xa9\x2a\x26\x6e\xfe\x84\x83"\
    "\x0b\xdf\x0e\x56\x58\x1e\x3d\xa9\xad\xff\x99\x25\xd8\xce\x81\x3a"\
    "\x0c\xe2\xe0\x89\xa4\xd0\x46\x01\x2f\xcc\x46\xa6\x50\x18\xce\xab"\
    "\xb2\xe4\x99\xd5\x4c\x99\xb2\x88\xcb\x95\xe7\x8b\x04\x72\x1d\x3d"\
    "\x1f\xa7\x68\x26\xce\x72\xb1\xa2\xfb\xfe\x53\xff\x88\xb5\xbf\x84"\
    "\x19\x24\x46\x5a\x27\xfe\xa2\xb7\x79\x0a\x25\x87\x14\x50\x14\x72"\
    "\xf3\x2d\x31\xcf\x0d\x86\xd2\xf5\x53\x6a\x69\x7f\xe3\xe2\x3c\xe3"\
    "\x57\xb8\x59\x86\x45\x36\x5b\x9e\xe2\xe2\xef\xbe\x55\x51\x1f\x45"\
    "\x85\x66\x12\xa0\xff\x2e\x77\xb9\xa3\x01\x39\x73\x3e\xc2\x3d\x5f"\
    "\x69\x0c\xec\x20\x97\x11\xbd\xe6\x01\x78\xca\x6a\x68\xf2\xc8\x76"\
    "\xa2\x5a\x54\x7a\x96\x67\x84\x47\x79\x76\x07\xd2\x1d\x7d\x3e\x91"\
    "\x9d\xd2\xdc\xf1\xd1\xc4\xaf\x52\x58\x3a\xc9\xa9\x51\x83\x5e\x2c"\
    "\x9b\x63\x95\xbd\x48\xeb\x71\x85\x79\x52\xeb\xa5\xc9\x3b\x50\x69"\
    "\xc8\x7e\x59\x05\x6a\x06\xa9\xe4\x3b\x6a\x89\xc0\x6d\x6a\xb2\x4e"\
    "\x46\x70\x9b\x23\xe0\x0d\x38\xf4\x89\xb0\xd1\x75\x0a\x3c\xe6\xa9"\
    "\xc2\x5b\xb8\x7f\x6f\x12\x89\xf3\x13\x0f\xb4\xf3\x95\x0e\x2a\x4a"\
    "\xfd\xc6\xfb\x35\xbb\x03\xe9\xd4\x54\x01\x68\x25\x92\x12\x0c\x68"\
    "\x35\x43\x23\x93\x90\x39\xc0\xbd\x0c\xf1\x91\xfe\xfb\xdc\x12\x5f"\
    "\x6d\x6a\x10\x55\xcb\x07\xf8\x6c\xc8\x47\x35\x19\x12\xe4\x4a\x10"\
    "\xb1\x69\x86\x8a\x12\x4e\xf6\xc1\xe7\x2f\x61\x9d\xe6\xa3\xc8\x23"\
    "\xa7\xa8\x89\xe5\x58\xd5\xec\x55\x68\x5d\x10\xc8\x02\xab\x75\x62"\
    "\x1b\x92\xd2\x74\xfc\xa7\x50\x02\x08\x7b\x80\xb3\xdf\x1a\xae\xb0"\
    "\x12\x6e\x38\xda\xaa\xc0\x51\x4b\x59\xde\x14\xcf\x7d\x78\xde\xef"\
    "\x59\xd7\x0c\x5e\x9b\xff\x9f\xd9\xea\xdc\xdd\x07\x32\x79\x6c\x5f"\
    "\x97\x50\xc6\xd3\x61\xec\xf6\x74\x59\xa9\x31\xcf\xb3\xab\xed\x9e"\
    "\x59\x15\x9d\x00\x4d\xf9\x82\x70\x47\xea\xb7\x24\xbf\x7c\x79\xf4"\
    "\xf4\x25\xce\xed\x2e\x14\x2e\x64\xe4\xf3\x7b\xab\x16\xbd\x71\xdb"\
    "\xd8\xec\x32\x24\x99\xb6\x61\xc8\xa2\x95\xa7\x16\x8d\xf4\xf6\x04"\
    "\xfb\x39\xad\x0d\x08\xf5\x60\x22\x8e\x03\x5a\xdd\xde\x27\x49\xd2"\
    "\x2b\x22\x3b\x14\x16\xde\x72\xb5\x3d\x8e\x06\x41\xb5\x84\x86\x66"\
    "\x40\xe7\x26\x28\x77\xd0\xd8\x1f\x3d\x77\x7b\x6f\x55\x68\x59\x19"\
    "\x6a\xa0\x0e\xf6\xa1\x2d\x15\xde\xc1\xcc\x80\xda\x14\xe6\xcd\x88"\
    "\xef\x78\x11\x4b\x2b\x4a\x77\xec\xdc\xfc\x0d\x82\x1c\x93\x1a\x95"\
    "\xbf\x93\x45\x3a\xd9\xb2\xab\x71\x3e\x67\x9a\x6d\x4b\x57\x97\xe9"\
    "\x03\x2e\x98\x94\xe7\x1f\x1d\xee\xa9\x19\x03\x4c\xd5\x0d\x19\x22"\
    "\xfb\x6b\xb9\xad\xa3\x11\xc9\xda\x00\x1e\x97\xd7\x8e\x16\xb3\xa0"\
    "\x50\x57\x3b\xb8\x30\x49\x44\x10\xf8\xe4\x26\x13\x77\x52\x65\x6d"\
    "\x02\xef\xaf\x1c\xf5\xf1\x99\x20\x20\xf5\x93\xcb\x6a\xf9\xf1\xd3"\
    "\x3b\x51\xbd\x2e\xd0\xed\xf8\xff\xde\x4a\xe2\x34\x5c\x30\x24\x0a"\
    "\x7b\x28\x79\xe6\x6e\xfe\xa6\x59\xf4\x2f\xfb\x7f\x67\x27\x4a\xc3"\
    "\xed\x9d\x64\xef\xd6\xff\x46\x7d\x87\xfc\xf6\x51\xb6\x89\x5c\xd0"\
    "\x21\x61\xf3\x13\x3d\x78\x15\xb1\x69\xe8\x81\xed\x6a\xac\x38\xee"\
    "\xa4\x97\x09\x9c\xe3\x29\x52\x5f\xbf\x6c\xe7\x0c\xb6\xc5\xac\x99"\
    "\x85\x8b\xb7\x2a\x56\x70\x0a\x68\x10\x7e\xaa\x23\xb5\x2c\x37\x58"\
    "\xf2\x14\x6f\x6a\x3e\x97\xd5\x11\xed\x64\x0c\xde\xe5\x4d\x65\xe2"\
    "\x3b\x3d\xb6\xfa\x40\x91\xbd\x53\x0e\x12\xa1\xc4\x65\x39\xec\x5c"\
    "\x6c\x09\x17\x8d\xc0\xdc\x88\xbe\x35\xbe\x92\x93\xdc\xa1\x58\x12"\
    "\xd9\xd0\x38\x63\xdb\xd4\x4c\x08\xca\xea\xe5\x86\x94\xfb\x4c\x26"\
    "\x7c\xe5\xc7\x12\x09\xed\x3d\x69\x03\x2b\x67\xcd\xfc\x92\xff\x4d"\
    "\x4b\x5f\x92\xdc\x03\x4a\xea\xf2\x43\xf1\x36\x34\xe6\x00\x92\x35"\
    "\x21\xef\x2b\xd7\x7a\x44\xd6\xf8\x04\x6f\x51\x7e\xb6\x07\xa7\x70"\
    "\x92\x5c\x03\x6c\x6e\x55\xfc\xe4\x49\x55\xdb\xaa\xfd\xd9\x4c\xe0"\
    "\x9a\x94\x33\x12\x09\xde\xba\x15\x7b\x22\x67\x70\xd4\x3b\xb0\x17"\
    "\xef\xcd\x0c\xe3\xe4\xee\xea\x70\xaf\x87\xac\x5d\x22\x98\xad\x50"\
    "\xbe\x83\x8e\x78\x50\x4e\xe5\xee\xce\xa1\x05\xee\x1f\x7c\x0f\xc6"\
    "\x8c\x0a\x22\x0f\xf1\x91\xc2\xad\x1f\x4e\xe9\x03\xc6\x68\xec\x7f"\
    "\xb8\xae\xd7\x85\xff\x76\x36\x03\xfb\x8b\x5a\x09\x37\x6d\x3b\xa3"\
    "\x74\xb1\x8d\xe7\x35\x3c\x66\x08\xd7\x34\x14\x54\x57\x44\x72\x72"\
    "\x82\x5c\x37\xc8\x86\xd4\x21\xab\x3d\x54\x3b\x65\x4f\xc4\xf3\x5b"\
    "\xa8\x21\x3a\xf6\xf4\xd2\x7b\x40\x55\x86\x23\x30\x4c\x3e\xbd\x6a"\
    "\xb2\xe8\x5e\xb3\x1c\xe3\x9e\x90\xe8\x84\x4f\x89\x2d\xbd\x43\xda"\
    "\x28\x60\xeb\x46\x87\x4d\xf9\x6a\x2f\xb6\x5d\x0a\x9c\x38\xb1\x91"\
    "\x9b\x02\xbe\x60\x0b\xa4\x67\x61\xa3\x77\x84\xa4\x6f\x95\xe4\xf4"\
    "\xdf\x4a\xa3\xbb\x8a\x66\x00\x1d\x4e\xdc\xb3\xd6\xe5\x2d\x44\xe5"\
    "\x27\x1c\x9e\x1b\xf2\xfd\x8b\x8d\x18\x1d\x48\x96\xb2\x9e\x0c\xd1"\
    "\x88\x36\xbc\x88\xdd\x2f\x30\x34\xec\x51\x35\x61\xea\x68\xf0\xa4"\
    "\x14\x6e\x68\x5f\x72\x39\xc0\xea\x46\xbb\x4f\xf1\xe9\x00\x77\x8a".b
  end
end
