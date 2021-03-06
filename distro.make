; This file describes the core project requirements for VideoKit 7.x. Several
; patches against Drupal core and their associated issue numbers have been
; included here for reference.
;
; Use this file to build a full distro including Drupal core (with patches) and
; the VideoKit install profile using the following command:
;
;     $ drush make distro.make [directory]

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.12"

; Make system directories configurable to allow tests in profiles/[name]/modules to be run.
; http://drupal.org/node/911354
projects[drupal][patch][911354] = http://drupal.org/files/issues/911354.43.patch

; Missing drupal_alter() for text formats and filters
; http://drupal.org/node/903730
projects[drupal][patch][903730] = http://drupal.org/files/issues/drupal.filter-alter.82.patch

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][995156] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

; PHP notice on AJAX upload for file_managed fields added during element #process callback
; http://drupal.org/node/1067470
projects[drupal][patch][1067470] = http://drupal.org/files/issues/managed_file_1067470.patch

; PECL uploadprogress bar doesn't appear.
; http://drupal.org/node/935208
; projects[drupal][patch][935208] = http://drupal.org/files/issues/935208-uploadprogress-bar-fix-67.patch

projects[octopus_video][type] = profile
projects[octopus_video][download][type] = git
projects[octopus_video][download][url] = https://github.com/heidisoft/Octopus.git
projects[octopus_video][download][tag] = 1.0-alpha6
