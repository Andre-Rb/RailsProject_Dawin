# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160112095050) do

  create_table "backend_layout", primary_key: "uid", force: true do |t|
    t.integer "pid",                     default: 0,  null: false
    t.integer "t3ver_oid",               default: 0,  null: false
    t.integer "t3ver_id",                default: 0,  null: false
    t.integer "t3ver_wsid",              default: 0,  null: false
    t.string  "t3ver_label",             default: "", null: false
    t.integer "t3ver_state",   limit: 1, default: 0,  null: false
    t.integer "t3ver_stage",             default: 0,  null: false
    t.integer "t3ver_count",             default: 0,  null: false
    t.integer "t3ver_tstamp",            default: 0,  null: false
    t.integer "t3ver_move_id",           default: 0,  null: false
    t.integer "t3_origuid",              default: 0,  null: false
    t.integer "tstamp",                  default: 0,  null: false
    t.integer "crdate",                  default: 0,  null: false
    t.integer "cruser_id",               default: 0,  null: false
    t.integer "hidden",        limit: 1, default: 0,  null: false
    t.integer "deleted",       limit: 1, default: 0,  null: false
    t.integer "sorting",                 default: 0,  null: false
    t.string  "title",                   default: "", null: false
    t.text    "description"
    t.text    "config",                               null: false
    t.text    "icon",                                 null: false
  end

  add_index "backend_layout", ["pid"], name: "parent", using: :btree
  add_index "backend_layout", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "be_groups", primary_key: "uid", force: true do |t|
    t.integer "pid",                             default: 0,     null: false
    t.integer "tstamp",                          default: 0,     null: false
    t.string  "title",              limit: 50,   default: "",    null: false
    t.text    "non_exclude_fields"
    t.text    "explicit_allowdeny"
    t.string  "allowed_languages",               default: "",    null: false
    t.text    "custom_options"
    t.text    "db_mountpoints"
    t.string  "pagetypes_select",                default: "",    null: false
    t.text    "tables_select"
    t.text    "tables_modify"
    t.integer "crdate",                          default: 0,     null: false
    t.integer "cruser_id",                       default: 0,     null: false
    t.text    "groupMods"
    t.text    "file_mountpoints"
    t.text    "file_permissions"
    t.boolean "hidden",                          default: false, null: false
    t.string  "description",        limit: 2000, default: "",    null: false
    t.string  "lockToDomain",       limit: 50,   default: "",    null: false
    t.boolean "deleted",                         default: false, null: false
    t.text    "TSconfig"
    t.text    "subgroup"
    t.integer "hide_in_lists",      limit: 1,    default: 0,     null: false
    t.integer "workspace_perms",    limit: 1,    default: 1,     null: false
    t.string  "category_perms",                  default: "",    null: false
  end

  add_index "be_groups", ["pid"], name: "parent", using: :btree

  create_table "be_sessions", id: false, force: true do |t|
    t.string  "ses_id",         limit: 32,         default: "", null: false
    t.string  "ses_name",       limit: 32,         default: "", null: false
    t.string  "ses_iplock",     limit: 39,         default: "", null: false
    t.integer "ses_hashlock",                      default: 0,  null: false
    t.integer "ses_userid",                        default: 0,  null: false
    t.integer "ses_tstamp",                        default: 0,  null: false
    t.text    "ses_data",       limit: 2147483647
    t.integer "ses_backuserid",                    default: 0,  null: false
  end

  add_index "be_sessions", ["ses_tstamp"], name: "ses_tstamp", using: :btree

  create_table "be_users", primary_key: "uid", force: true do |t|
    t.integer "pid",                                    default: 0,     null: false
    t.integer "tstamp",                                 default: 0,     null: false
    t.string  "username",              limit: 50,       default: "",    null: false
    t.string  "description",           limit: 2000,     default: "",    null: false
    t.integer "avatar",                                 default: 0,     null: false
    t.string  "password",              limit: 100,      default: "",    null: false
    t.integer "admin",                 limit: 1,        default: 0,     null: false
    t.string  "usergroup",                              default: "",    null: false
    t.boolean "disable",                                default: false, null: false
    t.integer "starttime",                              default: 0,     null: false
    t.integer "endtime",                                default: 0,     null: false
    t.string  "lang",                  limit: 2,        default: "",    null: false
    t.string  "email",                 limit: 80,       default: "",    null: false
    t.text    "db_mountpoints"
    t.integer "options",               limit: 1,        default: 0,     null: false
    t.integer "crdate",                                 default: 0,     null: false
    t.integer "cruser_id",                              default: 0,     null: false
    t.string  "realName",              limit: 80,       default: "",    null: false
    t.text    "userMods"
    t.string  "allowed_languages",                      default: "",    null: false
    t.text    "uc",                    limit: 16777215
    t.text    "file_mountpoints"
    t.text    "file_permissions"
    t.integer "workspace_perms",       limit: 1,        default: 1,     null: false
    t.string  "lockToDomain",          limit: 50,       default: "",    null: false
    t.boolean "disableIPlock",                          default: false, null: false
    t.boolean "deleted",                                default: false, null: false
    t.text    "TSconfig"
    t.integer "lastlogin",                              default: 0,     null: false
    t.integer "createdByAction",                        default: 0,     null: false
    t.text    "usergroup_cached_list"
    t.integer "workspace_id",                           default: 0,     null: false
    t.integer "workspace_preview",     limit: 1,        default: 1,     null: false
    t.string  "category_perms",                         default: "",    null: false
  end

  add_index "be_users", ["pid"], name: "parent", using: :btree
  add_index "be_users", ["username"], name: "username", using: :btree

  create_table "cache_md5params", primary_key: "md5hash", force: true do |t|
    t.integer "tstamp",           default: 0, null: false
    t.integer "type",   limit: 1, default: 0, null: false
    t.text    "params"
  end

  create_table "cache_treelist", primary_key: "md5hash", force: true do |t|
    t.integer "pid",                       default: 0, null: false
    t.text    "treelist", limit: 16777215
    t.integer "tstamp",                    default: 0, null: false
    t.integer "expires",                   default: 0, null: false
  end

  create_table "cf_cache_hash", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_cache_hash", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_cache_hash_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_cache_hash_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_cache_hash_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_cache_imagesizes", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_cache_imagesizes", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_cache_imagesizes_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_cache_imagesizes_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_cache_imagesizes_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_cache_pages", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_cache_pages", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_cache_pages_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_cache_pages_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_cache_pages_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_cache_pagesection", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_cache_pagesection", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_cache_pagesection_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_cache_pagesection_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_cache_pagesection_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_cache_rootline", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_cache_rootline", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_cache_rootline_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_cache_rootline_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_cache_rootline_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_extbase_datamapfactory_datamap", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_extbase_datamapfactory_datamap", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_extbase_datamapfactory_datamap_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_extbase_datamapfactory_datamap_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_extbase_datamapfactory_datamap_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_extbase_object", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_extbase_object", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_extbase_object_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_extbase_object_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_extbase_object_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_extbase_reflection", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_extbase_reflection", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_extbase_reflection_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_extbase_reflection_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_extbase_reflection_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_extbase_typo3dbbackend_queries", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_extbase_typo3dbbackend_queries", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_extbase_typo3dbbackend_queries_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_extbase_typo3dbbackend_queries_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_extbase_typo3dbbackend_queries_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "cf_extbase_typo3dbbackend_tablecolumns", force: true do |t|
    t.string  "identifier", limit: 250,      default: "", null: false
    t.integer "expires",                     default: 0,  null: false
    t.binary  "content",    limit: 16777215
  end

  add_index "cf_extbase_typo3dbbackend_tablecolumns", ["identifier", "expires"], name: "cache_id", using: :btree

  create_table "cf_extbase_typo3dbbackend_tablecolumns_tags", force: true do |t|
    t.string "identifier", limit: 250, default: "", null: false
    t.string "tag",        limit: 250, default: "", null: false
  end

  add_index "cf_extbase_typo3dbbackend_tablecolumns_tags", ["identifier"], name: "cache_id", using: :btree
  add_index "cf_extbase_typo3dbbackend_tablecolumns_tags", ["tag"], name: "cache_tag", using: :btree

  create_table "fe_groups", primary_key: "uid", force: true do |t|
    t.string  "tx_extbase_type",                 default: "0", null: false
    t.integer "pid",                             default: 0,   null: false
    t.integer "tstamp",                          default: 0,   null: false
    t.integer "crdate",                          default: 0,   null: false
    t.integer "cruser_id",                       default: 0,   null: false
    t.string  "title",               limit: 50,  default: "",  null: false
    t.integer "hidden",              limit: 1,   default: 0,   null: false
    t.string  "lockToDomain",        limit: 50,  default: "",  null: false
    t.integer "deleted",             limit: 1,   default: 0,   null: false
    t.text    "description"
    t.text    "subgroup",            limit: 255
    t.text    "TSconfig"
    t.text    "felogin_redirectPid", limit: 255
  end

  add_index "fe_groups", ["pid"], name: "parent", using: :btree

  create_table "fe_session_data", primary_key: "hash", force: true do |t|
    t.binary  "content", limit: 16777215
    t.integer "tstamp",                   default: 0, null: false
  end

  add_index "fe_session_data", ["tstamp"], name: "tstamp", using: :btree

  create_table "fe_sessions", id: false, force: true do |t|
    t.string  "ses_id",        limit: 32, default: "",    null: false
    t.string  "ses_name",      limit: 32, default: "",    null: false
    t.string  "ses_iplock",    limit: 39, default: "",    null: false
    t.integer "ses_hashlock",             default: 0,     null: false
    t.integer "ses_userid",               default: 0,     null: false
    t.integer "ses_tstamp",               default: 0,     null: false
    t.binary  "ses_data"
    t.boolean "ses_permanent",            default: false, null: false
  end

  add_index "fe_sessions", ["ses_tstamp"], name: "ses_tstamp", using: :btree

  create_table "fe_users", primary_key: "uid", force: true do |t|
    t.string  "tx_extbase_type",                 default: "0", null: false
    t.integer "pid",                             default: 0,   null: false
    t.integer "tstamp",                          default: 0,   null: false
    t.string  "username",                        default: "",  null: false
    t.string  "password",            limit: 100, default: "",  null: false
    t.text    "usergroup",           limit: 255
    t.integer "disable",             limit: 1,   default: 0,   null: false
    t.integer "starttime",                       default: 0,   null: false
    t.integer "endtime",                         default: 0,   null: false
    t.string  "name",                limit: 80,  default: "",  null: false
    t.string  "first_name",          limit: 50,  default: "",  null: false
    t.string  "middle_name",         limit: 50,  default: "",  null: false
    t.string  "last_name",           limit: 50,  default: "",  null: false
    t.string  "address",                         default: "",  null: false
    t.string  "telephone",           limit: 20,  default: "",  null: false
    t.string  "fax",                 limit: 20,  default: "",  null: false
    t.string  "email",                           default: "",  null: false
    t.integer "crdate",                          default: 0,   null: false
    t.integer "cruser_id",                       default: 0,   null: false
    t.string  "lockToDomain",        limit: 50,  default: "",  null: false
    t.integer "deleted",             limit: 1,   default: 0,   null: false
    t.binary  "uc"
    t.string  "title",               limit: 40,  default: "",  null: false
    t.string  "zip",                 limit: 10,  default: "",  null: false
    t.string  "city",                limit: 50,  default: "",  null: false
    t.string  "country",             limit: 40,  default: "",  null: false
    t.string  "www",                 limit: 80,  default: "",  null: false
    t.string  "company",             limit: 80,  default: "",  null: false
    t.text    "image",               limit: 255
    t.text    "TSconfig"
    t.integer "fe_cruser_id",                    default: 0,   null: false
    t.integer "lastlogin",                       default: 0,   null: false
    t.integer "is_online",                       default: 0,   null: false
    t.text    "felogin_redirectPid", limit: 255
    t.string  "felogin_forgotHash",  limit: 80,  default: ""
  end

  add_index "fe_users", ["is_online"], name: "is_online", using: :btree
  add_index "fe_users", ["pid", "username"], name: "parent", using: :btree
  add_index "fe_users", ["username"], name: "username", using: :btree

  create_table "pages", primary_key: "uid", force: true do |t|
    t.integer "pid",                                   default: 0,     null: false
    t.integer "t3ver_oid",                             default: 0,     null: false
    t.integer "t3ver_id",                              default: 0,     null: false
    t.integer "t3ver_wsid",                            default: 0,     null: false
    t.string  "t3ver_label",                           default: "",    null: false
    t.integer "t3ver_state",               limit: 1,   default: 0,     null: false
    t.integer "t3ver_stage",                           default: 0,     null: false
    t.integer "t3ver_count",                           default: 0,     null: false
    t.integer "t3ver_tstamp",                          default: 0,     null: false
    t.integer "t3ver_move_id",                         default: 0,     null: false
    t.integer "t3_origuid",                            default: 0,     null: false
    t.integer "tstamp",                                default: 0,     null: false
    t.integer "sorting",                               default: 0,     null: false
    t.boolean "deleted",                               default: false, null: false
    t.integer "perms_userid",                          default: 0,     null: false
    t.integer "perms_groupid",                         default: 0,     null: false
    t.integer "perms_user",                limit: 1,   default: 0,     null: false
    t.integer "perms_group",               limit: 1,   default: 0,     null: false
    t.integer "perms_everybody",           limit: 1,   default: 0,     null: false
    t.integer "editlock",                  limit: 1,   default: 0,     null: false
    t.integer "crdate",                                default: 0,     null: false
    t.integer "cruser_id",                             default: 0,     null: false
    t.integer "hidden",                    limit: 1,   default: 0,     null: false
    t.string  "title",                                 default: "",    null: false
    t.integer "doktype",                               default: 0,     null: false
    t.text    "TSconfig"
    t.integer "is_siteroot",               limit: 1,   default: 0,     null: false
    t.integer "php_tree_stop",             limit: 1,   default: 0,     null: false
    t.integer "tx_impexp_origuid",                     default: 0,     null: false
    t.string  "url",                                   default: "",    null: false
    t.integer "starttime",                             default: 0,     null: false
    t.integer "endtime",                               default: 0,     null: false
    t.integer "urltype",                   limit: 1,   default: 0,     null: false
    t.integer "shortcut",                              default: 0,     null: false
    t.integer "shortcut_mode",                         default: 0,     null: false
    t.integer "no_cache",                              default: 0,     null: false
    t.string  "fe_group",                  limit: 100, default: "0",   null: false
    t.string  "subtitle",                              default: "",    null: false
    t.integer "layout",                                default: 0,     null: false
    t.integer "url_scheme",                limit: 1,   default: 0,     null: false
    t.string  "target",                    limit: 80,  default: "",    null: false
    t.integer "media",                                 default: 0,     null: false
    t.integer "lastUpdated",                           default: 0,     null: false
    t.text    "keywords"
    t.integer "cache_timeout",                         default: 0,     null: false
    t.string  "cache_tags",                            default: "",    null: false
    t.integer "newUntil",                              default: 0,     null: false
    t.text    "description"
    t.integer "no_search",                 limit: 1,   default: 0,     null: false
    t.integer "SYS_LASTCHANGED",                       default: 0,     null: false
    t.text    "abstract"
    t.string  "module",                    limit: 10,  default: "",    null: false
    t.integer "extendToSubpages",          limit: 1,   default: 0,     null: false
    t.string  "author",                                default: "",    null: false
    t.string  "author_email",              limit: 80,  default: "",    null: false
    t.string  "nav_title",                             default: "",    null: false
    t.integer "nav_hide",                  limit: 1,   default: 0,     null: false
    t.integer "content_from_pid",                      default: 0,     null: false
    t.integer "mount_pid",                             default: 0,     null: false
    t.integer "mount_pid_ol",              limit: 1,   default: 0,     null: false
    t.string  "alias",                     limit: 32,  default: "",    null: false
    t.integer "l18n_cfg",                  limit: 1,   default: 0,     null: false
    t.integer "fe_login_mode",             limit: 1,   default: 0,     null: false
    t.string  "backend_layout",            limit: 64,  default: "",    null: false
    t.string  "backend_layout_next_level", limit: 64,  default: "",    null: false
    t.text    "tsconfig_includes"
    t.integer "categories",                            default: 0,     null: false
    t.string  "tx_realurl_pathsegment",                default: "",    null: false
    t.integer "tx_realurl_pathoverride",               default: 0,     null: false
    t.integer "tx_realurl_exclude",                    default: 0,     null: false
    t.integer "tx_realurl_nocache",                    default: 0,     null: false
  end

  add_index "pages", ["alias"], name: "alias", using: :btree
  add_index "pages", ["is_siteroot"], name: "determineSiteRoot", using: :btree
  add_index "pages", ["pid", "deleted", "sorting"], name: "parent", using: :btree
  add_index "pages", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "pages_language_overlay", primary_key: "uid", force: true do |t|
    t.integer "pid",                                     default: 0,  null: false
    t.integer "doktype",                                 default: 0,  null: false
    t.integer "t3ver_oid",                               default: 0,  null: false
    t.integer "t3ver_id",                                default: 0,  null: false
    t.integer "t3ver_wsid",                              default: 0,  null: false
    t.string  "t3ver_label",                             default: "", null: false
    t.integer "t3ver_state",            limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                             default: 0,  null: false
    t.integer "t3ver_count",                             default: 0,  null: false
    t.integer "t3ver_tstamp",                            default: 0,  null: false
    t.integer "t3ver_move_id",                           default: 0,  null: false
    t.integer "t3_origuid",                              default: 0,  null: false
    t.integer "tstamp",                                  default: 0,  null: false
    t.integer "crdate",                                  default: 0,  null: false
    t.integer "cruser_id",                               default: 0,  null: false
    t.integer "sys_language_uid",                        default: 0,  null: false
    t.string  "title",                                   default: "", null: false
    t.integer "hidden",                 limit: 1,        default: 0,  null: false
    t.integer "starttime",                               default: 0,  null: false
    t.integer "endtime",                                 default: 0,  null: false
    t.integer "deleted",                limit: 1,        default: 0,  null: false
    t.string  "subtitle",                                default: "", null: false
    t.string  "nav_title",                               default: "", null: false
    t.integer "media",                                   default: 0,  null: false
    t.text    "keywords"
    t.text    "description"
    t.text    "abstract"
    t.string  "author",                                  default: "", null: false
    t.string  "author_email",           limit: 80,       default: "", null: false
    t.integer "tx_impexp_origuid",                       default: 0,  null: false
    t.binary  "l18n_diffsource",        limit: 16777215
    t.string  "url",                                     default: "", null: false
    t.integer "urltype",                limit: 1,        default: 0,  null: false
    t.integer "shortcut",                                default: 0,  null: false
    t.integer "shortcut_mode",                           default: 0,  null: false
    t.string  "tx_realurl_pathsegment",                  default: "", null: false
  end

  add_index "pages_language_overlay", ["pid", "sys_language_uid"], name: "parent", using: :btree
  add_index "pages_language_overlay", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "pictures", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "pictures", ["user_id"], name: "index_pictures_on_user_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "titre"
    t.integer  "user_id"
    t.string   "header"
    t.string   "image"
    t.string   "publishDate"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sys_be_shortcuts", primary_key: "uid", force: true do |t|
    t.integer "userid",                default: 0,  null: false
    t.string  "module_name",           default: "", null: false
    t.text    "url"
    t.string  "description",           default: "", null: false
    t.integer "sorting",               default: 0,  null: false
    t.integer "sc_group",    limit: 1, default: 0,  null: false
  end

  add_index "sys_be_shortcuts", ["userid"], name: "event", using: :btree

  create_table "sys_category", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",      limit: 30,       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "sorting",                           default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215,              null: false
    t.text    "title",            limit: 255,                   null: false
    t.text    "description"
    t.integer "parent",                            default: 0,  null: false
    t.integer "items",                             default: 0,  null: false
  end

  add_index "sys_category", ["parent"], name: "category_parent", using: :btree
  add_index "sys_category", ["pid", "deleted", "sys_language_uid"], name: "category_list", using: :btree
  add_index "sys_category", ["pid"], name: "parent", using: :btree
  add_index "sys_category", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "sys_category_record_mm", id: false, force: true do |t|
    t.integer "uid_local",       default: 0,  null: false
    t.integer "uid_foreign",     default: 0,  null: false
    t.string  "tablenames",      default: "", null: false
    t.string  "fieldname",       default: "", null: false
    t.integer "sorting",         default: 0,  null: false
    t.integer "sorting_foreign", default: 0,  null: false
  end

  add_index "sys_category_record_mm", ["uid_foreign", "tablenames", "fieldname", "sorting_foreign"], name: "uid_foreign_tablefield", length: {"uid_foreign"=>nil, "tablenames"=>"40", "fieldname"=>"3", "sorting_foreign"=>nil}, using: :btree
  add_index "sys_category_record_mm", ["uid_local", "uid_foreign"], name: "uid_local_foreign", using: :btree

  create_table "sys_collection", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,        null: false
    t.integer "tstamp",                            default: 0,        null: false
    t.integer "crdate",                            default: 0,        null: false
    t.integer "cruser_id",                         default: 0,        null: false
    t.integer "t3ver_oid",                         default: 0,        null: false
    t.integer "t3ver_id",                          default: 0,        null: false
    t.integer "t3ver_wsid",                        default: 0,        null: false
    t.string  "t3ver_label",      limit: 30,       default: "",       null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,        null: false
    t.integer "t3ver_stage",                       default: 0,        null: false
    t.integer "t3ver_count",                       default: 0,        null: false
    t.integer "t3ver_tstamp",                      default: 0,        null: false
    t.integer "t3ver_move_id",                     default: 0,        null: false
    t.integer "t3_origuid",                        default: 0,        null: false
    t.integer "sys_language_uid",                  default: 0,        null: false
    t.integer "l10n_parent",                       default: 0,        null: false
    t.text    "l10n_diffsource",  limit: 16777215
    t.integer "deleted",          limit: 1,        default: 0,        null: false
    t.integer "hidden",           limit: 1,        default: 0,        null: false
    t.integer "starttime",                         default: 0,        null: false
    t.integer "endtime",                           default: 0,        null: false
    t.integer "fe_group",                          default: 0,        null: false
    t.text    "title",            limit: 255
    t.text    "description"
    t.string  "type",             limit: 32,       default: "static", null: false
    t.text    "table_name",       limit: 255
    t.integer "items",                             default: 0,        null: false
  end

  add_index "sys_collection", ["pid", "deleted"], name: "parent", using: :btree
  add_index "sys_collection", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "sys_collection_entries", primary_key: "uid", force: true do |t|
    t.integer "uid_local",              default: 0,  null: false
    t.integer "uid_foreign",            default: 0,  null: false
    t.string  "tablenames",  limit: 64, default: "", null: false
    t.integer "sorting",                default: 0,  null: false
  end

  add_index "sys_collection_entries", ["uid_foreign"], name: "uid_foreign", using: :btree
  add_index "sys_collection_entries", ["uid_local"], name: "uid_local", using: :btree

  create_table "sys_domain", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,   null: false
    t.integer "tstamp",                            default: 0,   null: false
    t.integer "crdate",                            default: 0,   null: false
    t.integer "cruser_id",                         default: 0,   null: false
    t.integer "hidden",                 limit: 1,  default: 0,   null: false
    t.string  "domainName",             limit: 80, default: "",  null: false
    t.string  "redirectTo",                        default: "",  null: false
    t.integer "redirectHttpStatusCode",            default: 301, null: false
    t.integer "sorting",                           default: 0,   null: false
    t.integer "prepend_params",                    default: 0,   null: false
    t.integer "forced",                 limit: 1,  default: 0,   null: false
  end

  add_index "sys_domain", ["domainName", "hidden"], name: "tx_realurl", using: :btree
  add_index "sys_domain", ["pid"], name: "parent", using: :btree
  add_index "sys_domain", ["redirectTo", "hidden"], name: "getSysDomain", using: :btree

  create_table "sys_file", primary_key: "uid", force: true do |t|
    t.integer "pid",                           default: 0,  null: false
    t.integer "tstamp",                        default: 0,  null: false
    t.integer "last_indexed",                  default: 0,  null: false
    t.integer "missing",           limit: 1,   default: 0,  null: false
    t.integer "storage",                       default: 0,  null: false
    t.string  "type",              limit: 10,  default: "", null: false
    t.integer "metadata",                      default: 0,  null: false
    t.text    "identifier"
    t.string  "identifier_hash",   limit: 40,  default: "", null: false
    t.string  "folder_hash",       limit: 40,  default: "", null: false
    t.string  "extension",                     default: "", null: false
    t.string  "mime_type",                     default: "", null: false
    t.text    "name",              limit: 255
    t.string  "sha1",              limit: 40,  default: "", null: false
    t.integer "size",              limit: 8,   default: 0,  null: false
    t.integer "creation_date",                 default: 0,  null: false
    t.integer "modification_date",             default: 0,  null: false
  end

  add_index "sys_file", ["last_indexed"], name: "lastindex", using: :btree
  add_index "sys_file", ["sha1"], name: "sha1", using: :btree
  add_index "sys_file", ["storage", "folder_hash"], name: "folder", using: :btree
  add_index "sys_file", ["storage", "identifier_hash"], name: "sel01", using: :btree
  add_index "sys_file", ["tstamp"], name: "tstamp", using: :btree

  create_table "sys_file_collection", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,        null: false
    t.integer "tstamp",                            default: 0,        null: false
    t.integer "crdate",                            default: 0,        null: false
    t.integer "cruser_id",                         default: 0,        null: false
    t.integer "t3ver_oid",                         default: 0,        null: false
    t.integer "t3ver_id",                          default: 0,        null: false
    t.integer "t3ver_wsid",                        default: 0,        null: false
    t.string  "t3ver_label",      limit: 30,       default: "",       null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,        null: false
    t.integer "t3ver_stage",                       default: 0,        null: false
    t.integer "t3ver_count",                       default: 0,        null: false
    t.integer "t3ver_tstamp",                      default: 0,        null: false
    t.integer "t3ver_move_id",                     default: 0,        null: false
    t.integer "t3_origuid",                        default: 0,        null: false
    t.integer "sys_language_uid",                  default: 0,        null: false
    t.integer "l10n_parent",                       default: 0,        null: false
    t.text    "l10n_diffsource",  limit: 16777215
    t.integer "deleted",          limit: 1,        default: 0,        null: false
    t.integer "hidden",           limit: 1,        default: 0,        null: false
    t.integer "starttime",                         default: 0,        null: false
    t.integer "endtime",                           default: 0,        null: false
    t.text    "title",            limit: 255
    t.text    "description"
    t.string  "type",             limit: 30,       default: "static", null: false
    t.integer "files",                             default: 0,        null: false
    t.integer "storage",                           default: 0,        null: false
    t.text    "folder",                                               null: false
    t.integer "recursive",        limit: 1,        default: 0,        null: false
    t.integer "category",                          default: 0,        null: false
  end

  add_index "sys_file_collection", ["pid", "deleted"], name: "parent", using: :btree
  add_index "sys_file_collection", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "sys_file_metadata", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215,              null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",      limit: 30,       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "file",                              default: 0,  null: false
    t.text    "title",            limit: 255
    t.integer "width",                             default: 0,  null: false
    t.integer "height",                            default: 0,  null: false
    t.text    "description"
    t.text    "alternative"
    t.integer "categories",                        default: 0,  null: false
  end

  add_index "sys_file_metadata", ["file"], name: "file", using: :btree
  add_index "sys_file_metadata", ["l10n_parent", "sys_language_uid"], name: "fal_filelist", using: :btree
  add_index "sys_file_metadata", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "sys_file_processedfile", primary_key: "uid", force: true do |t|
    t.integer "tstamp",                        default: 0,  null: false
    t.integer "crdate",                        default: 0,  null: false
    t.integer "storage",                       default: 0,  null: false
    t.integer "original",                      default: 0,  null: false
    t.string  "identifier",        limit: 512, default: "", null: false
    t.text    "name",              limit: 255
    t.text    "configuration"
    t.string  "configurationsha1", limit: 40,  default: "", null: false
    t.string  "originalfilesha1",  limit: 40,  default: "", null: false
    t.string  "task_type",         limit: 200, default: "", null: false
    t.string  "checksum",          limit: 10,  default: "", null: false
    t.integer "width",                         default: 0
    t.integer "height",                        default: 0
  end

  add_index "sys_file_processedfile", ["original", "task_type", "configurationsha1"], name: "combined_1", using: :btree
  add_index "sys_file_processedfile", ["storage", "identifier"], name: "identifier", length: {"storage"=>nil, "identifier"=>"199"}, using: :btree

  create_table "sys_file_reference", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "sorting",                           default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",      limit: 30,       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215,              null: false
    t.integer "uid_local",                         default: 0,  null: false
    t.integer "uid_foreign",                       default: 0,  null: false
    t.string  "tablenames",       limit: 64,       default: "", null: false
    t.string  "fieldname",        limit: 64,       default: "", null: false
    t.integer "sorting_foreign",                   default: 0,  null: false
    t.string  "table_local",      limit: 64,       default: "", null: false
    t.text    "title",            limit: 255
    t.text    "description"
    t.text    "alternative",      limit: 255
    t.string  "link",             limit: 1024,     default: "", null: false
    t.text    "downloadname",     limit: 255
    t.string  "crop",             limit: 4000,     default: "", null: false
    t.integer "autoplay",         limit: 1,        default: 0,  null: false
  end

  add_index "sys_file_reference", ["deleted"], name: "deleted", using: :btree
  add_index "sys_file_reference", ["pid", "deleted"], name: "parent", using: :btree
  add_index "sys_file_reference", ["tablenames", "fieldname"], name: "tablenames_fieldname", length: {"tablenames"=>"32", "fieldname"=>"12"}, using: :btree
  add_index "sys_file_reference", ["uid_foreign"], name: "uid_foreign", using: :btree

  create_table "sys_file_storage", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",               limit: 1,   default: 0,  null: false
    t.string  "name",                  limit: 30,  default: "", null: false
    t.text    "description"
    t.text    "driver",                limit: 255
    t.text    "configuration"
    t.integer "is_default",            limit: 1,   default: 0,  null: false
    t.integer "is_browsable",          limit: 1,   default: 0,  null: false
    t.integer "is_public",             limit: 1,   default: 0,  null: false
    t.integer "is_writable",           limit: 1,   default: 0,  null: false
    t.integer "is_online",             limit: 1,   default: 1,  null: false
    t.integer "auto_extract_metadata", limit: 1,   default: 1,  null: false
    t.text    "processingfolder",      limit: 255
  end

  add_index "sys_file_storage", ["pid", "deleted"], name: "parent", using: :btree

  create_table "sys_filemounts", primary_key: "uid", force: true do |t|
    t.integer "pid",                      default: 0,     null: false
    t.integer "tstamp",                   default: 0,     null: false
    t.string  "title",       limit: 30,   default: "",    null: false
    t.string  "description", limit: 2000, default: "",    null: false
    t.string  "path",        limit: 120,  default: "",    null: false
    t.integer "base",                     default: 0,     null: false
    t.integer "hidden",      limit: 1,    default: 0,     null: false
    t.boolean "deleted",                  default: false, null: false
    t.integer "sorting",                  default: 0,     null: false
    t.boolean "read_only",                default: false, null: false
  end

  add_index "sys_filemounts", ["pid"], name: "parent", using: :btree

  create_table "sys_history", primary_key: "uid", force: true do |t|
    t.integer "pid",                            default: 0,  null: false
    t.integer "sys_log_uid",                    default: 0,  null: false
    t.text    "history_data",  limit: 16777215
    t.text    "fieldlist"
    t.integer "recuid",                         default: 0,  null: false
    t.string  "tablename",                      default: "", null: false
    t.integer "tstamp",                         default: 0,  null: false
    t.text    "history_files", limit: 16777215
    t.integer "snapshot",                       default: 0,  null: false
  end

  add_index "sys_history", ["pid"], name: "parent", using: :btree
  add_index "sys_history", ["sys_log_uid"], name: "sys_log_uid", using: :btree
  add_index "sys_history", ["tablename", "recuid"], name: "recordident_1", using: :btree
  add_index "sys_history", ["tablename", "tstamp"], name: "recordident_2", using: :btree

  create_table "sys_language", primary_key: "uid", force: true do |t|
    t.integer "pid",                            default: 0,  null: false
    t.integer "tstamp",                         default: 0,  null: false
    t.integer "hidden",              limit: 1,  default: 0,  null: false
    t.string  "title",               limit: 80, default: "", null: false
    t.string  "flag",                limit: 20, default: "", null: false
    t.string  "language_isocode",    limit: 2,  default: "", null: false
    t.integer "static_lang_isocode",            default: 0,  null: false
  end

  add_index "sys_language", ["pid"], name: "parent", using: :btree

  create_table "sys_lockedrecords", primary_key: "uid", force: true do |t|
    t.integer "userid",                  default: 0,  null: false
    t.integer "tstamp",                  default: 0,  null: false
    t.string  "record_table",            default: "", null: false
    t.integer "record_uid",              default: 0,  null: false
    t.integer "record_pid",              default: 0,  null: false
    t.string  "username",     limit: 50, default: "", null: false
    t.integer "feuserid",                default: 0,  null: false
  end

  add_index "sys_lockedrecords", ["userid", "tstamp"], name: "event", using: :btree

  create_table "sys_log", primary_key: "uid", force: true do |t|
    t.integer "pid",                   default: 0,     null: false
    t.integer "userid",                default: 0,     null: false
    t.integer "action",     limit: 1,  default: 0,     null: false
    t.integer "recuid",                default: 0,     null: false
    t.string  "tablename",             default: "",    null: false
    t.integer "recpid",                default: 0,     null: false
    t.integer "error",      limit: 1,  default: 0,     null: false
    t.text    "details",                               null: false
    t.integer "tstamp",                default: 0,     null: false
    t.integer "type",       limit: 1,  default: 0,     null: false
    t.integer "details_nr", limit: 1,  default: 0,     null: false
    t.string  "IP",         limit: 39, default: "",    null: false
    t.text    "log_data"
    t.integer "event_pid",             default: -1,    null: false
    t.integer "workspace",             default: 0,     null: false
    t.string  "NEWid",      limit: 30, default: "",    null: false
    t.string  "request_id", limit: 13, default: "",    null: false
    t.float   "time_micro", limit: 24, default: 0.0,   null: false
    t.string  "component",             default: "",    null: false
    t.boolean "level",                 default: false, null: false
    t.text    "message"
    t.text    "data"
  end

  add_index "sys_log", ["pid"], name: "parent", using: :btree
  add_index "sys_log", ["recuid", "uid"], name: "recuidIdx", using: :btree
  add_index "sys_log", ["request_id"], name: "request", using: :btree
  add_index "sys_log", ["type", "action", "tstamp"], name: "user_auth", using: :btree
  add_index "sys_log", ["userid", "event_pid"], name: "event", using: :btree

  create_table "sys_news", primary_key: "uid", force: true do |t|
    t.integer "pid",                        default: 0,  null: false
    t.integer "tstamp",                     default: 0,  null: false
    t.integer "crdate",                     default: 0,  null: false
    t.integer "cruser_id",                  default: 0,  null: false
    t.integer "deleted",   limit: 1,        default: 0,  null: false
    t.integer "hidden",    limit: 1,        default: 0,  null: false
    t.integer "starttime",                  default: 0,  null: false
    t.integer "endtime",                    default: 0,  null: false
    t.string  "title",                      default: "", null: false
    t.text    "content",   limit: 16777215
  end

  add_index "sys_news", ["pid"], name: "parent", using: :btree

  create_table "sys_note", primary_key: "uid", force: true do |t|
    t.integer "pid",                default: 0,  null: false
    t.integer "deleted",  limit: 1, default: 0,  null: false
    t.integer "tstamp",             default: 0,  null: false
    t.integer "crdate",             default: 0,  null: false
    t.integer "cruser",             default: 0,  null: false
    t.string  "subject",            default: "", null: false
    t.text    "message"
    t.integer "personal", limit: 1, default: 0,  null: false
    t.integer "category", limit: 1, default: 0,  null: false
    t.integer "sorting",            default: 0,  null: false
  end

  add_index "sys_note", ["pid"], name: "parent", using: :btree

  create_table "sys_refindex", primary_key: "hash", force: true do |t|
    t.string  "tablename",               default: "",    null: false
    t.integer "recuid",                  default: 0,     null: false
    t.string  "field",       limit: 40,  default: "",    null: false
    t.string  "flexpointer",             default: "",    null: false
    t.string  "softref_key", limit: 30,  default: "",    null: false
    t.string  "softref_id",  limit: 40,  default: "",    null: false
    t.integer "sorting",                 default: 0,     null: false
    t.boolean "deleted",                 default: false, null: false
    t.integer "workspace",               default: 0,     null: false
    t.string  "ref_table",               default: "",    null: false
    t.integer "ref_uid",                 default: 0,     null: false
    t.string  "ref_string",  limit: 200, default: "",    null: false
  end

  add_index "sys_refindex", ["ref_string"], name: "lookup_string", using: :btree
  add_index "sys_refindex", ["ref_table", "ref_uid"], name: "lookup_uid", using: :btree
  add_index "sys_refindex", ["tablename", "recuid"], name: "lookup_rec", using: :btree

  create_table "sys_registry", primary_key: "uid", force: true do |t|
    t.string "entry_namespace", limit: 128, default: "", null: false
    t.string "entry_key",       limit: 128, default: "", null: false
    t.binary "entry_value"
  end

  add_index "sys_registry", ["entry_namespace", "entry_key"], name: "entry_identifier", unique: true, using: :btree

  create_table "sys_template", primary_key: "uid", force: true do |t|
    t.integer "pid",                                   default: 0,  null: false
    t.integer "t3ver_oid",                             default: 0,  null: false
    t.integer "t3ver_id",                              default: 0,  null: false
    t.integer "t3ver_wsid",                            default: 0,  null: false
    t.string  "t3ver_label",                           default: "", null: false
    t.integer "t3ver_state",               limit: 1,   default: 0,  null: false
    t.integer "t3ver_stage",                           default: 0,  null: false
    t.integer "t3ver_count",                           default: 0,  null: false
    t.integer "t3ver_tstamp",                          default: 0,  null: false
    t.integer "t3ver_move_id",                         default: 0,  null: false
    t.integer "t3_origuid",                            default: 0,  null: false
    t.integer "tstamp",                                default: 0,  null: false
    t.integer "sorting",                               default: 0,  null: false
    t.integer "crdate",                                default: 0,  null: false
    t.integer "cruser_id",                             default: 0,  null: false
    t.string  "title",                                 default: "", null: false
    t.string  "sitetitle",                             default: "", null: false
    t.integer "hidden",                    limit: 1,   default: 0,  null: false
    t.integer "starttime",                             default: 0,  null: false
    t.integer "endtime",                               default: 0,  null: false
    t.integer "root",                      limit: 1,   default: 0,  null: false
    t.integer "clear",                     limit: 1,   default: 0,  null: false
    t.text    "include_static_file"
    t.text    "constants"
    t.text    "config"
    t.string  "nextLevel",                 limit: 5,   default: "", null: false
    t.text    "description"
    t.text    "basedOn",                   limit: 255
    t.integer "deleted",                   limit: 1,   default: 0,  null: false
    t.integer "includeStaticAfterBasedOn", limit: 1,   default: 0,  null: false
    t.integer "static_file_mode",          limit: 1,   default: 0,  null: false
    t.integer "tx_impexp_origuid",                     default: 0,  null: false
  end

  add_index "sys_template", ["deleted", "hidden", "root"], name: "roottemplate", using: :btree
  add_index "sys_template", ["pid", "deleted", "hidden", "sorting"], name: "parent", using: :btree
  add_index "sys_template", ["root", "hidden"], name: "tx_realurl", using: :btree
  add_index "sys_template", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tt_content", primary_key: "uid", force: true do |t|
    t.integer "pid",                                                 default: 0,     null: false
    t.integer "t3ver_oid",                                           default: 0,     null: false
    t.integer "t3ver_id",                                            default: 0,     null: false
    t.integer "t3ver_wsid",                                          default: 0,     null: false
    t.string  "t3ver_label",                                         default: "",    null: false
    t.integer "t3ver_state",                        limit: 1,        default: 0,     null: false
    t.integer "t3ver_stage",                                         default: 0,     null: false
    t.integer "t3ver_count",                                         default: 0,     null: false
    t.integer "t3ver_tstamp",                                        default: 0,     null: false
    t.integer "t3ver_move_id",                                       default: 0,     null: false
    t.integer "t3_origuid",                                          default: 0,     null: false
    t.integer "tstamp",                                              default: 0,     null: false
    t.integer "crdate",                                              default: 0,     null: false
    t.integer "cruser_id",                                           default: 0,     null: false
    t.integer "editlock",                           limit: 1,        default: 0,     null: false
    t.integer "hidden",                             limit: 1,        default: 0,     null: false
    t.integer "sorting",                                             default: 0,     null: false
    t.string  "CType",                                               default: "",    null: false
    t.string  "header",                                              default: "",    null: false
    t.text    "rowDescription"
    t.text    "bodytext",                           limit: 16777215
    t.integer "image",                                               default: 0,     null: false
    t.integer "imagewidth",                         limit: 3,        default: 0,     null: false
    t.integer "imageorient",                        limit: 1,        default: 0,     null: false
    t.integer "imagecols",                          limit: 1,        default: 0,     null: false
    t.integer "imageborder",                        limit: 1,        default: 0,     null: false
    t.integer "media",                                               default: 0,     null: false
    t.integer "layout",                                              default: 0,     null: false
    t.integer "deleted",                            limit: 1,        default: 0,     null: false
    t.integer "cols",                                                default: 0,     null: false
    t.text    "records"
    t.text    "pages"
    t.integer "starttime",                                           default: 0,     null: false
    t.integer "endtime",                                             default: 0,     null: false
    t.integer "colPos",                                              default: 0,     null: false
    t.string  "subheader",                                           default: "",    null: false
    t.string  "fe_group",                           limit: 100,      default: "0",   null: false
    t.string  "header_link",                        limit: 1024,     default: "",    null: false
    t.integer "image_zoom",                         limit: 1,        default: 0,     null: false
    t.string  "header_layout",                      limit: 30,       default: "0",   null: false
    t.string  "menu_type",                          limit: 30,       default: "0",   null: false
    t.string  "list_type",                                           default: "",    null: false
    t.string  "select_key",                         limit: 80,       default: "",    null: false
    t.integer "sectionIndex",                       limit: 1,        default: 0,     null: false
    t.integer "linkToTop",                          limit: 1,        default: 0,     null: false
    t.text    "file_collections"
    t.integer "filelink_size",                      limit: 1,        default: 0,     null: false
    t.string  "filelink_sorting",                   limit: 10,       default: "",    null: false
    t.string  "target",                             limit: 30,       default: "",    null: false
    t.integer "date",                                                default: 0,     null: false
    t.integer "recursive",                          limit: 1,        default: 0,     null: false
    t.integer "imageheight",                        limit: 3,        default: 0,     null: false
    t.integer "sys_language_uid",                                    default: 0,     null: false
    t.integer "tx_impexp_origuid",                                   default: 0,     null: false
    t.text    "pi_flexform",                        limit: 16777215
    t.string  "accessibility_title",                limit: 30,       default: "",    null: false
    t.integer "accessibility_bypass",               limit: 1,        default: 0,     null: false
    t.string  "accessibility_bypass_text",          limit: 30,       default: "",    null: false
    t.integer "l18n_parent",                                         default: 0,     null: false
    t.binary  "l18n_diffsource",                    limit: 16777215
    t.text    "selected_categories"
    t.string  "category_field",                     limit: 64,       default: "",    null: false
    t.string  "table_caption"
    t.integer "table_delimiter",                    limit: 2,        default: 0,     null: false
    t.integer "table_enclosure",                    limit: 2,        default: 0,     null: false
    t.integer "table_header_position",              limit: 1,        default: 0,     null: false
    t.boolean "table_tfoot",                                         default: false, null: false
    t.string  "header_position",                    limit: 6,        default: "",    null: false
    t.integer "image_compression",                  limit: 1,        default: 0,     null: false
    t.integer "image_effects",                      limit: 1,        default: 0,     null: false
    t.integer "image_noRows",                       limit: 1,        default: 0,     null: false
    t.integer "section_frame",                                       default: 0,     null: false
    t.integer "spaceAfter",                         limit: 2,        default: 0,     null: false
    t.integer "spaceBefore",                        limit: 2,        default: 0,     null: false
    t.integer "table_bgColor",                                       default: 0,     null: false
    t.integer "table_border",                       limit: 1,        default: 0,     null: false
    t.integer "table_cellpadding",                  limit: 1,        default: 0,     null: false
    t.integer "table_cellspacing",                  limit: 1,        default: 0,     null: false
    t.integer "bullets_type",                       limit: 1,        default: 0,     null: false
    t.boolean "uploads_description",                                 default: false, null: false
    t.integer "uploads_type",                       limit: 1,        default: 0,     null: false
    t.integer "assets",                                              default: 0,     null: false
    t.integer "categories",                                          default: 0,     null: false
    t.string  "icon",                                                default: "",    null: false
    t.string  "icon_position",                                       default: "",    null: false
    t.integer "icon_size",                                           default: 0
    t.integer "icon_type",                                           default: 0
    t.string  "icon_color",                                          default: "",    null: false
    t.string  "icon_background",                                     default: "",    null: false
    t.string  "external_media_source",              limit: 1024,     default: "",    null: false
    t.string  "external_media_ratio",               limit: 10,       default: "",    null: false
    t.integer "tx_bootstrappackage_carousel_item",                   default: 0
    t.integer "tx_bootstrappackage_accordion_item",                  default: 0
    t.integer "tx_bootstrappackage_tab_item",                        default: 0
    t.string  "tx_bootstrapcore_visibility",                         default: "",    null: false
    t.string  "imagecaption_position",              limit: 6,        default: "",    null: false
  end

  add_index "tt_content", ["l18n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tt_content", ["pid", "sorting"], name: "parent", using: :btree
  add_index "tt_content", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_blogerar_author_tag_mm", id: false, force: true do |t|
    t.integer "uid_local",       default: 0, null: false
    t.integer "uid_foreign",     default: 0, null: false
    t.integer "sorting",         default: 0, null: false
    t.integer "sorting_foreign", default: 0, null: false
  end

  add_index "tx_blogerar_author_tag_mm", ["uid_foreign"], name: "uid_foreign", using: :btree
  add_index "tx_blogerar_author_tag_mm", ["uid_local"], name: "uid_local", using: :btree

  create_table "tx_blogerar_domain_model_author", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.string  "first_nale",                        default: "", null: false
    t.string  "last_name",                         default: "", null: false
    t.string  "user_name",                         default: "", null: false
    t.text    "presentation",                                   null: false
    t.integer "image",                             default: 0,  null: false
    t.integer "tags",                              default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215
  end

  add_index "tx_blogerar_domain_model_author", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_blogerar_domain_model_author", ["pid"], name: "parent", using: :btree
  add_index "tx_blogerar_domain_model_author", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_blogerar_domain_model_category", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.string  "name",                              default: "", null: false
    t.text    "description",                                    null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215
  end

  add_index "tx_blogerar_domain_model_category", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_blogerar_domain_model_category", ["pid"], name: "parent", using: :btree
  add_index "tx_blogerar_domain_model_category", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_blogerar_domain_model_comment", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "post",                              default: 0,  null: false
    t.string  "title",                             default: "", null: false
    t.text    "content",                                        null: false
    t.string  "user_name",                         default: "", null: false
    t.integer "publication_date",                  default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215
  end

  add_index "tx_blogerar_domain_model_comment", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_blogerar_domain_model_comment", ["pid"], name: "parent", using: :btree
  add_index "tx_blogerar_domain_model_comment", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_blogerar_domain_model_post", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.string  "title",                             default: "", null: false
    t.integer "publication_date",                  default: 0,  null: false
    t.text    "summary",                                        null: false
    t.text    "content",                                        null: false
    t.integer "image",                             default: 0,  null: false
    t.integer "tags",                              default: 0,  null: false
    t.integer "authors",                           default: 0,  null: false
    t.integer "categories",                        default: 0,  null: false
    t.integer "comments",                          default: 0,  null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215
  end

  add_index "tx_blogerar_domain_model_post", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_blogerar_domain_model_post", ["pid"], name: "parent", using: :btree
  add_index "tx_blogerar_domain_model_post", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_blogerar_domain_model_tag", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.string  "name",                              default: "", null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215
  end

  add_index "tx_blogerar_domain_model_tag", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_blogerar_domain_model_tag", ["pid"], name: "parent", using: :btree
  add_index "tx_blogerar_domain_model_tag", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_blogerar_post_author_mm", id: false, force: true do |t|
    t.integer "uid_local",       default: 0, null: false
    t.integer "uid_foreign",     default: 0, null: false
    t.integer "sorting",         default: 0, null: false
    t.integer "sorting_foreign", default: 0, null: false
  end

  add_index "tx_blogerar_post_author_mm", ["uid_foreign"], name: "uid_foreign", using: :btree
  add_index "tx_blogerar_post_author_mm", ["uid_local"], name: "uid_local", using: :btree

  create_table "tx_blogerar_post_category_mm", id: false, force: true do |t|
    t.integer "uid_local",       default: 0, null: false
    t.integer "uid_foreign",     default: 0, null: false
    t.integer "sorting",         default: 0, null: false
    t.integer "sorting_foreign", default: 0, null: false
  end

  add_index "tx_blogerar_post_category_mm", ["uid_foreign"], name: "uid_foreign", using: :btree
  add_index "tx_blogerar_post_category_mm", ["uid_local"], name: "uid_local", using: :btree

  create_table "tx_blogerar_post_tag_mm", id: false, force: true do |t|
    t.integer "uid_local",       default: 0, null: false
    t.integer "uid_foreign",     default: 0, null: false
    t.integer "sorting",         default: 0, null: false
    t.integer "sorting_foreign", default: 0, null: false
  end

  add_index "tx_blogerar_post_tag_mm", ["uid_foreign"], name: "uid_foreign", using: :btree
  add_index "tx_blogerar_post_tag_mm", ["uid_local"], name: "uid_local", using: :btree

  create_table "tx_bootstrappackage_accordion_item", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "tt_content",                        default: 0
    t.string  "header",                            default: "", null: false
    t.text    "bodytext",                                       null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sorting",                           default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215,              null: false
  end

  add_index "tx_bootstrappackage_accordion_item", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_bootstrappackage_accordion_item", ["pid"], name: "parent", using: :btree
  add_index "tx_bootstrappackage_accordion_item", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_bootstrappackage_carousel_item", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "tt_content",                        default: 0
    t.string  "item_type",                         default: "", null: false
    t.string  "header",                            default: "", null: false
    t.integer "header_layout",    limit: 1,        default: 1,  null: false
    t.text    "bodytext",                                       null: false
    t.integer "image",                             default: 0
    t.string  "link",                              default: "", null: false
    t.string  "text_color",                        default: "", null: false
    t.string  "background_color",                  default: "", null: false
    t.integer "background_image",                  default: 0
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sorting",                           default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215,              null: false
  end

  add_index "tx_bootstrappackage_carousel_item", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_bootstrappackage_carousel_item", ["pid"], name: "parent", using: :btree
  add_index "tx_bootstrappackage_carousel_item", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_bootstrappackage_tab_item", primary_key: "uid", force: true do |t|
    t.integer "pid",                               default: 0,  null: false
    t.integer "tt_content",                        default: 0
    t.string  "header",                            default: "", null: false
    t.text    "bodytext",                                       null: false
    t.integer "tstamp",                            default: 0,  null: false
    t.integer "crdate",                            default: 0,  null: false
    t.integer "cruser_id",                         default: 0,  null: false
    t.integer "deleted",          limit: 1,        default: 0,  null: false
    t.integer "hidden",           limit: 1,        default: 0,  null: false
    t.integer "starttime",                         default: 0,  null: false
    t.integer "endtime",                           default: 0,  null: false
    t.integer "t3ver_oid",                         default: 0,  null: false
    t.integer "t3ver_id",                          default: 0,  null: false
    t.integer "t3ver_wsid",                        default: 0,  null: false
    t.string  "t3ver_label",                       default: "", null: false
    t.integer "t3ver_state",      limit: 1,        default: 0,  null: false
    t.integer "t3ver_stage",                       default: 0,  null: false
    t.integer "t3ver_count",                       default: 0,  null: false
    t.integer "t3ver_tstamp",                      default: 0,  null: false
    t.integer "t3ver_move_id",                     default: 0,  null: false
    t.integer "sorting",                           default: 0,  null: false
    t.integer "t3_origuid",                        default: 0,  null: false
    t.integer "sys_language_uid",                  default: 0,  null: false
    t.integer "l10n_parent",                       default: 0,  null: false
    t.binary  "l10n_diffsource",  limit: 16777215,              null: false
  end

  add_index "tx_bootstrappackage_tab_item", ["l10n_parent", "sys_language_uid"], name: "language", using: :btree
  add_index "tx_bootstrappackage_tab_item", ["pid"], name: "parent", using: :btree
  add_index "tx_bootstrappackage_tab_item", ["t3ver_oid", "t3ver_wsid"], name: "t3ver_oid", using: :btree

  create_table "tx_extensionmanager_domain_model_extension", primary_key: "uid", force: true do |t|
    t.integer "pid",                                      default: 0,  null: false
    t.string  "extension_key",           limit: 60,       default: "", null: false
    t.integer "repository",                               default: 1,  null: false
    t.string  "version",                 limit: 15,       default: "", null: false
    t.integer "alldownloadcounter",                       default: 0,  null: false
    t.integer "downloadcounter",                          default: 0,  null: false
    t.string  "title",                   limit: 150,      default: "", null: false
    t.text    "description",             limit: 16777215
    t.integer "state",                                    default: 0,  null: false
    t.integer "review_state",                             default: 0,  null: false
    t.integer "category",                                 default: 0,  null: false
    t.integer "last_updated",                             default: 0,  null: false
    t.text    "serialized_dependencies", limit: 16777215
    t.string  "author_name",                              default: "", null: false
    t.string  "author_email",                             default: "", null: false
    t.string  "ownerusername",           limit: 50,       default: "", null: false
    t.string  "md5hash",                 limit: 35,       default: "", null: false
    t.text    "update_comment",          limit: 16777215
    t.string  "authorcompany",                            default: "", null: false
    t.integer "integer_version",                          default: 0,  null: false
    t.integer "current_version",                          default: 0,  null: false
    t.integer "lastreviewedversion",                      default: 0,  null: false
  end

  add_index "tx_extensionmanager_domain_model_extension", ["current_version", "review_state"], name: "index_currentversions", using: :btree
  add_index "tx_extensionmanager_domain_model_extension", ["extension_key", "repository"], name: "index_extrepo", using: :btree
  add_index "tx_extensionmanager_domain_model_extension", ["extension_key", "version", "repository"], name: "versionextrepo", unique: true, using: :btree
  add_index "tx_extensionmanager_domain_model_extension", ["integer_version", "repository"], name: "index_versionrepo", using: :btree

  create_table "tx_extensionmanager_domain_model_repository", primary_key: "uid", force: true do |t|
    t.integer "pid",                              default: 0,  null: false
    t.string  "title",           limit: 150,      default: "", null: false
    t.text    "description",     limit: 16777215
    t.string  "wsdl_url",        limit: 100,      default: "", null: false
    t.string  "mirror_list_url", limit: 100,      default: "", null: false
    t.integer "last_update",                      default: 0,  null: false
    t.integer "extension_count",                  default: 0,  null: false
  end

  create_table "tx_impexp_presets", primary_key: "uid", force: true do |t|
    t.integer "user_uid",              default: 0,  null: false
    t.string  "title",                 default: "", null: false
    t.integer "public",      limit: 1, default: 0,  null: false
    t.integer "item_uid",              default: 0,  null: false
    t.binary  "preset_data"
  end

  add_index "tx_impexp_presets", ["item_uid"], name: "lookup", using: :btree

  create_table "tx_realurl_chashcache", primary_key: "spurl_hash", force: true do |t|
    t.string "chash_string", limit: 32, default: "", null: false
    t.text   "spurl_string"
  end

  add_index "tx_realurl_chashcache", ["chash_string"], name: "chash_string", using: :btree

  create_table "tx_realurl_errorlog", id: false, force: true do |t|
    t.integer "url_hash",     default: 0, null: false
    t.text    "url",                      null: false
    t.text    "error",                    null: false
    t.text    "last_referer",             null: false
    t.integer "counter",      default: 0, null: false
    t.integer "cr_date",      default: 0, null: false
    t.integer "tstamp",       default: 0, null: false
    t.integer "rootpage_id",  default: 0, null: false
  end

  add_index "tx_realurl_errorlog", ["counter", "tstamp"], name: "counter", using: :btree

  create_table "tx_realurl_pathcache", primary_key: "cache_id", force: true do |t|
    t.integer "page_id",                 default: 0, null: false
    t.integer "language_id",             default: 0, null: false
    t.integer "rootpage_id",             default: 0, null: false
    t.text    "mpvar",       limit: 255,             null: false
    t.text    "pagepath",                            null: false
    t.integer "expire",                  default: 0, null: false
  end

  add_index "tx_realurl_pathcache", ["expire"], name: "expire", using: :btree
  add_index "tx_realurl_pathcache", ["page_id", "language_id", "rootpage_id", "expire"], name: "pathq2", using: :btree
  add_index "tx_realurl_pathcache", ["rootpage_id", "pagepath", "expire"], name: "pathq1", length: {"rootpage_id"=>nil, "pagepath"=>"32", "expire"=>nil}, using: :btree

  create_table "tx_realurl_redirects", primary_key: "uid", force: true do |t|
    t.integer "url_hash",     default: 0, null: false
    t.text    "url",                      null: false
    t.text    "destination",              null: false
    t.text    "last_referer",             null: false
    t.integer "counter",      default: 0, null: false
    t.integer "tstamp",       default: 0, null: false
    t.integer "has_moved",    default: 0, null: false
    t.integer "domain_limit", default: 0, null: false
  end

  add_index "tx_realurl_redirects", ["url_hash", "domain_limit"], name: "sel01", unique: true, using: :btree

  create_table "tx_realurl_uniqalias", primary_key: "uid", force: true do |t|
    t.integer "tstamp",                 default: 0,  null: false
    t.string  "tablename",              default: "", null: false
    t.string  "field_alias",            default: "", null: false
    t.string  "field_id",    limit: 60, default: "", null: false
    t.string  "value_alias",            default: "", null: false
    t.integer "value_id",               default: 0,  null: false
    t.integer "lang",                   default: 0,  null: false
    t.integer "expire",                 default: 0,  null: false
  end

  add_index "tx_realurl_uniqalias", ["field_alias", "field_id", "value_id", "lang", "expire"], name: "bk_realurl01", length: {"field_alias"=>"20", "field_id"=>nil, "value_id"=>nil, "lang"=>nil, "expire"=>nil}, using: :btree
  add_index "tx_realurl_uniqalias", ["tablename", "field_alias", "field_id", "value_alias", "expire"], name: "bk_realurl02", length: {"tablename"=>"32", "field_alias"=>"20", "field_id"=>nil, "value_alias"=>"20", "expire"=>nil}, using: :btree
  add_index "tx_realurl_uniqalias", ["tablename"], name: "tablename", using: :btree

  create_table "tx_realurl_urldecodecache", primary_key: "url_hash", force: true do |t|
    t.text    "spurl",       limit: 255,             null: false
    t.binary  "content",                             null: false
    t.integer "page_id",                 default: 0, null: false
    t.integer "rootpage_id",             default: 0, null: false
    t.integer "tstamp",                  default: 0, null: false
  end

  add_index "tx_realurl_urldecodecache", ["page_id"], name: "page_id", using: :btree

  create_table "tx_realurl_urlencodecache", primary_key: "url_hash", force: true do |t|
    t.text    "origparams",     limit: 255,             null: false
    t.text    "internalExtras", limit: 255,             null: false
    t.text    "content",                                null: false
    t.integer "page_id",                    default: 0, null: false
    t.integer "tstamp",                     default: 0, null: false
  end

  add_index "tx_realurl_urlencodecache", ["page_id"], name: "page_id", using: :btree

  create_table "tx_rsaauth_keys", primary_key: "uid", force: true do |t|
    t.integer "pid",       default: 0, null: false
    t.integer "crdate",    default: 0, null: false
    t.text    "key_value"
  end

  add_index "tx_rsaauth_keys", ["crdate"], name: "crdate", using: :btree

  create_table "tx_rtehtmlarea_acronym", primary_key: "uid", force: true do |t|
    t.integer "pid",                           default: 0,  null: false
    t.integer "deleted",             limit: 1, default: 0,  null: false
    t.integer "hidden",              limit: 1, default: 0,  null: false
    t.integer "starttime",                     default: 0,  null: false
    t.integer "endtime",                       default: 0,  null: false
    t.integer "sorting",                       default: 0,  null: false
    t.integer "sys_language_uid",              default: 0,  null: false
    t.integer "type",                limit: 1, default: 1,  null: false
    t.string  "term",                          default: "", null: false
    t.string  "acronym",                       default: "", null: false
    t.integer "static_lang_isocode",           default: 0,  null: false
  end

  add_index "tx_rtehtmlarea_acronym", ["pid"], name: "parent", using: :btree

  create_table "tx_scheduler_task", primary_key: "uid", force: true do |t|
    t.integer "crdate",                           default: 0,  null: false
    t.integer "disable",                limit: 1, default: 0,  null: false
    t.text    "description"
    t.integer "nextexecution",                    default: 0,  null: false
    t.integer "lastexecution_time",               default: 0,  null: false
    t.text    "lastexecution_failure"
    t.string  "lastexecution_context",  limit: 3, default: "", null: false
    t.binary  "serialized_task_object"
    t.binary  "serialized_executions"
    t.integer "task_group",                       default: 0,  null: false
  end

  add_index "tx_scheduler_task", ["nextexecution"], name: "index_nextexecution", using: :btree

  create_table "tx_scheduler_task_group", primary_key: "uid", force: true do |t|
    t.integer "pid",                    default: 0,  null: false
    t.integer "tstamp",                 default: 0,  null: false
    t.integer "crdate",                 default: 0,  null: false
    t.integer "cruser_id",              default: 0,  null: false
    t.integer "deleted",     limit: 1,  default: 0,  null: false
    t.integer "sorting",                default: 0,  null: false
    t.integer "hidden",      limit: 1,  default: 0,  null: false
    t.string  "groupName",   limit: 80, default: "", null: false
    t.text    "description"
  end

  add_index "tx_scheduler_task_group", ["pid"], name: "parent", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birth_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
