# Fetching transactions and events ofthe RPToken contract
import requests
from web3 import Web3

# Etherscan API key
API_KEY = 'E3JHPGKI3NWIKTAJ46DB1898FZCSNS71HU'

# Contract address
CONTRACT_ADDRESS = '0xe94254B3CEe9cA341d8C71b787aA567c6729E388'

# Etherscan API URL
ETHERSCAN_API_URL = 'https://api-sepolia.etherscan.io/api'

# Function to get transactions of a contract
def get_transactions(contract_address, api_key):
    params = {
        'module': 'account',
        'action': 'txlist',
        'address': contract_address,
        'startblock': '0',
        'endblock': 'latest',
        'sort': 'asc',
        'apikey': api_key
    }
    response = requests.get(ETHERSCAN_API_URL, params=params)
    return response.json()

# Function to get events of a contract
def get_events(contract_address, api_key):
    params = {
        'module': 'logs',
        'action': 'getLogs',
        'address': contract_address,
        'fromBlock': '0',
        'toBlock': 'latest',
        'apikey': api_key
    }
    response = requests.get(ETHERSCAN_API_URL, params=params)
    return response.json()

# Retrieve transactions
transactions = get_transactions(CONTRACT_ADDRESS, API_KEY)
# print('Transactions:')
# print(transactions)

# Retrieve events
events = get_events(CONTRACT_ADDRESS, API_KEY)
# print('Events:')


# Define the event signatures you want to map
event_signatures = {
    "LiquidityAdded(address,uint256,uint256)": "LiquidityAdded",
    "LiquidityWithdrawn(address,uint256,uint256)": "LiquidityWithdrawn",
    "Swapped(address,uint256,uint256,bool)": "Swapped"
    # Add other events as necessary
}

# Calculate the Keccak-256 hash (topic 0) for each event signature
event_signature_hashes = {Web3.keccak(text=sig).hex(): name for sig, name in event_signatures.items()}

# # Now you have a dictionary mapping hashes to event names
# print(event_signature_hashes)
