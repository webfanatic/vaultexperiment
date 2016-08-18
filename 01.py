
import hvac
from secret import *

# Define the GITHUB_TOKEN in a secret.py file that you create.
print GITHUB_TOKEN
print ROOT_TOKEN


client = hvac.Client(url='http://localhost:8200', token=ROOT_TOKEN)
print 'Autenticated:%s' % client.is_authenticated()

client.write('secret/foo', baz='bar', lease='1h')
print('secret/foo: %s' % client.read('secret/foo'))
client.delete('secret/foo')
print('secret/foo: %s' % client.read('secret/foo'))

key = 'aws/roles/deploy'
print('%s: %s' % (key, client.read(key)))

key = 'aws/creds/deploy'
print('%s: %s' % (key, client.read(key)))




