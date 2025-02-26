# Release History

### 0.9.0 (2023-03-01)

#### Features

* Support for CloseStream#new_partitions ([#20571](https://github.com/googleapis/google-cloud-ruby/issues/20571)) 

### 0.8.0 (2023-02-23)

#### Features

* Support for the generate_initial_change_stream_partitions RPC ([#20352](https://github.com/googleapis/google-cloud-ruby/issues/20352)) 
* Support for the read_change_stream RPC 

### 0.7.1 (2022-10-18)

#### Bug Fixes

This release fixes the RequestStats interfaces. The wrong version of those interfaces were released in 0.7.0.

* BREAKING CHANGE: Removed RequestStats#read_efficiency_stats 
* BREAKING CHANGE: Removed the REQUEST_STATS_EFFICIENCY RequestStatsView, and adjusted the ID of REQUEST_STATS_FULL accordingly. 
* BREAKING CHANGE: Renamed AllReadStats to FullReadStatsView, and updated the field names in RequestStats. ([#19270](https://github.com/googleapis/google-cloud-ruby/issues/19270)) 
* BREAKING CHANGE: Renamed ReadIteratorStats to ReadIterationStats and removed the deletes_seen_count field. 

### 0.7.0 (2022-09-28)

#### Features

* Return RequestStats when reading rows ([#19214](https://github.com/googleapis/google-cloud-ruby/issues/19214)) 

### 0.6.0 (2022-07-01)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.5.0 / 2022-02-15

#### Features

* Added support for the ping_and_warm call

### 0.4.0 / 2022-02-08

#### Features

* Update routing headers in API calls -- add `app_profile_id`

### 0.3.5 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.3.4 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.3.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.3.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.3.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.3.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.2.0 / 2021-02-03

#### Features

* Use self-signed JWT credentials when possible

### 0.1.4 / 2021-01-26

#### Bug Fixes

* Update default timeout and retry configuration

### 0.1.3 / 2021-01-13

#### Bug Fixes

* Update keepalive configuration

### 0.1.2 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.1.1 / 2020-08-06

#### Bug Fixes

* Fix retries by converting error names to integer codes

### 0.1.0 / 2020-07-27

Initial release.
