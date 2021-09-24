class Feedback
  def self.not_found(record = "record")
  "Ooops!, #{record} does not exist!!"
  end
def self.invalid_token
"Wrong token"
end
def self.invalid_credentials
"wrong credentials"
end

def self.missing_token
  'token missing'
end

def  self.unauthorized
"request unauthorized"
end

def self.account_created
  "Congrats,your account is successfully opened"
end
def self.account_not_created
  'Opps Account could not be created'
end

def self.expired_token
  'oops, your token has expired. login to generate another.'
end
end