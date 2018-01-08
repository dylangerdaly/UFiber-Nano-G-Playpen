meta:
  id: cfe_nv_values
  application: Broadcom CFE NV Values
  endian: be

seq:
  - id: skip
    type: skip
    size: 1408
  - id: nv_header
    type: nv_header

types:
  skip:
    seq:
      - id: junk
        type: u4
  nv_header:
    seq:
      - id: version
        type: u4
      - id: boot_line
        type: str
        size: 256
        encoding: UTF-8
      - id: board_id
        type: str
        size: 16
        encoding: UTF-8
      - id: main_thread
        type: u4
      - id: psi_size
        type: u4
      - id: number_of_mac_addresses
        type: u4
      - id: base_mac_address
        type: u4
      - id: reserved
        type: u4
      - id: old_checksum
        type: u4
      - id: gpon_serial_number_vendor_id
        type: str
        size: 4
        encoding: UTF-8
      - id: gpon_serial_number_serial_id
        type: str
        size: 8
        encoding: UTF-8
      - id: reserved
        type: u1
      - id: gpon_password
        type: str
        size: 11
        encoding: UTF-8
      - id: wlan_params
        type: str
        size: 256
        encoding: UTF-8
      - id: syslog_size
        type: u4
      - id: nand_part_ofs_kb
        type: str
        size: 20
        encoding: UTF-8
      - id: nand_part_size_kb
        type: str
        size: 20
        encoding: UTF-8
      - id: voice_board_id
        type: str
        size: 16
        encoding: UTF-8
      - id: afe_id
        type: u8
      - id: unused
        type: str
        size: 372
        encoding: UTF-8
      - id: checksum_crc32_combine
        type: u4
