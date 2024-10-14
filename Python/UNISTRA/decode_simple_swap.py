import requests
from eth_abi import decode
from eth_utils import decode_hex

# Dictionnary of events


# Function to decode the event topics (indexed parameters)
def decode_event(event, event_signature_hashes):
    topics, data = event['topics'], event['data']
    event_signature_hash = topics[0][2:]
    event_name = event_signature_hashes[event_signature_hash]
    if event_name == "LiquidityAdded" or event_name == "LiquidityWithdrawn":
        provider = '0x' + topics[1][26:]  # Strip the first 26 characters (leading zeros and '0x')
        abi_types = ['uint256', 'uint256']
        decoded_data = decode(abi_types, decode_hex(data))
        return({'event': event_name,'provider': provider,'x': decoded_data[0],'y': decoded_data[1]})
        
    else:
        trader = '0x' + topics[1][26:]
        abi_types = ['uint256', 'uint256', 'bool']
        decoded_data = decode(abi_types, decode_hex(data))
        return({'event': event_name,'trader': trader,'x': decoded_data[0],'y': decoded_data[1], 'isXtoY': decoded_data[2]})