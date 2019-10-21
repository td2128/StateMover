from frame_parser import parse_frame_address
from frame_parser import parse_frame_data
from frame_parser import parse_binary_frame_data
from frame_parser import parse_configuration_information
from frame_parser import parse_binary_configuration_information

FRAME_LENGTH = 123
MAX_FRAMES = 32530

def parse_rdbk_file(rdbk_file, frame_data):
	# Skip overhead words (10 words + one frame)
	for i in range(10 + FRAME_LENGTH):
		rdbk_file.readline()

	# Parse frame data, starting from address 0
	parse_frame_data(rdbk_file, 0, MAX_FRAMES * FRAME_LENGTH, frame_data)

def parse_rbd_file(rbd_file, frame_data):
	# Skip the file header
	line = rbd_file.readline()
	while line[0] != '0' and line[0] != '1':
		# Read the next line
		line = rbd_file.readline()

	# Skip overhead words (10 words + one frame)
	for i in range(10 + FRAME_LENGTH - 1):
		rbd_file.readline()

	# Parse frame data, starting from address 0
	parse_frame_data(rbd_file, 0, MAX_FRAMES * FRAME_LENGTH, frame_data)

def parse_msd_file(msd_file, mask_data):
	# Skip the file header
	line = msd_file.readline()
	while line[0] != '0' and line[0] != '1':
		# Read the next line
		line = msd_file.readline()

	# Skip overhead words (10 words + one frame)
	for i in range(10 + FRAME_LENGTH - 1):
		msd_file.readline()

	# Parse frame data, starting from address 0
	parse_frame_data(msd_file, 0, MAX_FRAMES * FRAME_LENGTH, mask_data)

def parse_rbt_file(rbt_file, frame_data, start_line, partial=False, partial_start_address=[], partial_word_count=[]):
	rbt_line_no = 0

	# Skip the file header
	line = rbt_file.readline()
	while line[0] != '0' and line[0] != '1':
		# Read the next line
		line = rbt_file.readline()
		rbt_line_no = rbt_line_no + 1

	while True:
		# Retrieve configuration information and skip to frame data
		start_address, word_count, rbt_line_no = parse_configuration_information(rbt_file, rbt_line_no)
		if word_count == -1:
			break
		start_line.append(rbt_line_no) # full or partial
		if partial:
			partial_start_address.append(start_address)
			partial_word_count.append(word_count)

		#print('rbt_file: FAR = ' + str(hex(start_address)))
		#print('rbt_file: WORD_COUNT = ' + str(word_count))
		#block, row, column, minor = parse_frame_address(start_address)
		#print ("Block = " + str(block) + " Row = " + str(row) + " Column = " + str(column) + " minor = " + str(minor)) 
		#print('line no = ' + str(rbt_line_no))

		# Parse frame data
		rbt_line_no = parse_frame_data(rbt_file, start_address, word_count, frame_data, rbt_line_no)


def parse_bit_file(bit_file, frame_data, start_byte, partial=False, partial_start_address=[], partial_word_count=[]):
	bit_byte_no = 0

	# Skip file header, stop when a Sync word AA995566 is detected
	while True:
		# Read one byte from the file
		byte = bit_file.read(1)
		bit_byte_no = bit_byte_no + 1
		if ord(byte) == 0xAA:
			byte = bit_file.read(1)
			bit_byte_no = bit_byte_no + 1
			if ord(byte) == 0x99:
				byte = bit_file.read(1)
				bit_byte_no = bit_byte_no + 1
				if ord(byte) == 0x55:
					byte = bit_file.read(1)
					bit_byte_no = bit_byte_no + 1
					if ord(byte) == 0x66:
						break

	while True:
		# Retrieve configuration information and skip to frame data
		start_address, word_count, bit_byte_no = parse_binary_configuration_information(bit_file, bit_byte_no)
		if word_count == -1:
			break
		start_byte.append(bit_byte_no)  # full or partial
		if partial:
			partial_start_address.append(start_address)
			partial_word_count.append(word_count)

		#print('bit_file: FAR = ' + str(hex(start_address)))
		#print('bit_file: WORD_COUNT = ' + str(word_count))

		# Parse frame data
		bit_byte_no = parse_binary_frame_data(bit_file, start_address, word_count, frame_data, bit_byte_no)	

def parse_msk_file(msk_file, mask_data):
	# Skip file header, stop when a Sync word AA995566 is detected
	while True:
		# Read one byte from the file
		byte = msk_file.read(1)
		if ord(byte) == 0xAA:
			byte = msk_file.read(1)
			if ord(byte) == 0x99:
				byte = msk_file.read(1)
				if ord(byte) == 0x55:
					byte = msk_file.read(1)
					if ord(byte) == 0x66:
						break

	# Retrieve configuration information and skip to frame data
	while True:
		start_address, word_count, temp = parse_binary_configuration_information(msk_file)
		if word_count == -1:
			break
		#print('msk_file: FAR = ' + str(hex(start_address)))
		#print('msk_file: WORD_COUNT = ' + str(word_count))

		# Parse frame data
		parse_binary_frame_data(msk_file, start_address, word_count, mask_data)