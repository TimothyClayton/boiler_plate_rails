# README
## Tools/Features
- RVM
- RSpec
- FactoryGirl
- Capybara
- DatabaseCleaner
- Rubocop
- Brakeman
- BundlerAudit
- Dotenv
- Byebug
- AwesomePrint
- HAML
- SASS
- Vital (lite but capable responsive framework)
- Autoprefixer (autogen for CSS browser prefixes)

## Setup

### Ruby Version
Currently using MRI ruby `2.4.0`. The version is managed in the `.ruby-version` file in the application root.

### Clone the Repository
`git clone git@github.com:TimothyClayton/boiler_plate_rails.git`

Replace all instances of `BoilerPlateRails` and `boiler_plate_rails` with `YourAppName` and `your_app_name`.

### Gemfiles
A `.ruby-gemset` file located in the application root has been added for those using RVM.

Create a gemset with: `rvm ruby-2.4.0@name_of_app --create --rvmrc`  
The resulting `.rvmrc` file is git ignored.  

Add the single line `name_of_app` to `.ruby-gemset`  
### Pull in Dependencies
Run `bundle`

### Database
A `database.yml.example` is provided in `config/` directory. Copy this file to `config/database.yml` and update it to match your development database parameters.  

### Database creation
Run `rake db:create db:migrate`

## Tools
### Debugging

* Byebug can used for debugging: [byebug gem](https://github.com/deivid-rodriguez/byebug)  

* AwesomePrint, an excellent pretty printer, can be used in place of `puts` and is available in the console and views (`ap "things"` instead of `puts "things"`): [awesome_print gem](https://github.com/awesome-print/awesome_print)  

After entering the console with `rails c`, run `AwesomePrint.irb!` to have all outputs clean, colored, and easily readable.   

### Front End
* HAML is used for views.  

* Vital framework is used for responsiveness: [vital docs](https://vitalcss.com/components)  

* Autoprefixer - no need to hand code browser prefixes. See `config/autoprefixer.yml` for current configuration.

### Test/Code Quality

#### RSpec
* Run the entire suite with `rspec spec`
* Run only tests in some_controller_spec with `rspec/spec/controllers/some_controller_spec.rb`  
* Run only tests beginning on line 12 in some_controller_spec `rspec/spec/controllers/some_controller_spec.rb:12`  

#### Brakeman
Brakeman is used to check the codebase for security vulnerabilities.  
* Generate the report with `brakeman`

#### BundlerAudit
BundlerAudit is used to check dependencies for security vulnerabilities.  
* Generate the report with `bundler audit`  

#### Rubocop
Rubocop is used for code quality.  
* Use `rubocop` to see how the code compares to the Ruby Style Guide.  
* Run my favorite command `rubocop -R -a` for Rubocop to automatically fix what it knows how to fix.  

#### BONUS!
Rake files have been added to run all tests and code quality tools with one command. Run `rake` in the terminal, and the following will be executed in order:  
1. All specs are run
2. Brakeman check is run  
3. BundlerAudit check is run  
4. Rubocop is run

Failing specs prevent the other checks from running.
### Secret Key (Production)
You'll need a `SECRET_KEY_BASE` declared in `.env`. Generate it with the command `rake secret`.
