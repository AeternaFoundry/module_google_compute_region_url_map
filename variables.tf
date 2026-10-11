variable "compute_region_url_maps" {
  description = <<EOT
Map of compute_region_url_maps, attributes below
Required:
    - name
Optional:
    - default_service
    - deletion_policy
    - description
    - project
    - region
    - default_route_action (block):
        - cors_policy (optional, block):
            - allow_credentials (optional)
            - allow_headers (optional)
            - allow_methods (optional)
            - allow_origin_regexes (optional)
            - allow_origins (optional)
            - disabled (optional)
            - expose_headers (optional)
            - max_age (optional)
        - fault_injection_policy (optional, block):
            - abort (optional, block):
                - http_status (optional)
                - percentage (optional)
            - delay (optional, block):
                - fixed_delay (optional, block):
                    - nanos (optional)
                    - seconds (optional)
                - percentage (optional)
        - request_mirror_policy (optional, block):
            - backend_service (optional)
        - retry_policy (optional, block):
            - num_retries (optional)
            - per_try_timeout (optional, block):
                - nanos (optional)
                - seconds (optional)
            - retry_conditions (optional)
        - timeout (optional, block):
            - nanos (optional)
            - seconds (optional)
        - url_rewrite (optional, block):
            - host_rewrite (optional)
            - path_prefix_rewrite (optional)
        - weighted_backend_services (optional, block):
            - backend_service (optional)
            - header_action (optional, block):
                - request_headers_to_add (optional, block):
                    - header_name (optional)
                    - header_value (optional)
                    - replace (optional)
                - request_headers_to_remove (optional)
                - response_headers_to_add (optional, block):
                    - header_name (optional)
                    - header_value (optional)
                    - replace (optional)
                - response_headers_to_remove (optional)
            - weight (optional)
    - default_url_redirect (block):
        - host_redirect (optional)
        - https_redirect (optional)
        - path_redirect (optional)
        - prefix_redirect (optional)
        - redirect_response_code (optional)
        - strip_query (required)
    - header_action (block):
        - request_headers_to_add (optional, block):
            - header_name (optional)
            - header_value (optional)
            - replace (optional)
        - request_headers_to_remove (optional)
        - response_headers_to_add (optional, block):
            - header_name (optional)
            - header_value (optional)
            - replace (optional)
        - response_headers_to_remove (optional)
    - host_rule (block):
        - description (optional)
        - hosts (required)
        - path_matcher (required)
    - path_matcher (block):
        - default_route_action (optional, block):
            - cors_policy (optional, block):
                - allow_credentials (optional)
                - allow_headers (optional)
                - allow_methods (optional)
                - allow_origin_regexes (optional)
                - allow_origins (optional)
                - disabled (optional)
                - expose_headers (optional)
                - max_age (optional)
            - fault_injection_policy (optional, block):
                - abort (optional, block):
                    - http_status (optional)
                    - percentage (optional)
                - delay (optional, block):
                    - fixed_delay (optional, block):
                        - nanos (optional)
                        - seconds (optional)
                    - percentage (optional)
            - max_stream_duration (optional, block):
                - nanos (optional)
                - seconds (required)
            - request_mirror_policy (optional, block):
                - backend_service (required)
            - retry_policy (optional, block):
                - num_retries (optional)
                - per_try_timeout (optional, block):
                    - nanos (optional)
                    - seconds (optional)
                - retry_conditions (optional)
            - timeout (optional, block):
                - nanos (optional)
                - seconds (optional)
            - url_rewrite (optional, block):
                - host_rewrite (optional)
                - path_prefix_rewrite (optional)
                - path_template_rewrite (optional)
            - weighted_backend_services (optional, block):
                - backend_service (optional)
                - header_action (optional, block):
                    - request_headers_to_add (optional, block):
                        - header_name (optional)
                        - header_value (optional)
                        - replace (optional)
                    - request_headers_to_remove (optional)
                    - response_headers_to_add (optional, block):
                        - header_name (optional)
                        - header_value (optional)
                        - replace (optional)
                    - response_headers_to_remove (optional)
                - weight (optional)
        - default_service (optional)
        - default_url_redirect (optional, block):
            - host_redirect (optional)
            - https_redirect (optional)
            - path_redirect (optional)
            - prefix_redirect (optional)
            - redirect_response_code (optional)
            - strip_query (required)
        - description (optional)
        - header_action (optional, block):
            - request_headers_to_add (optional, block):
                - header_name (optional)
                - header_value (optional)
                - replace (optional)
            - request_headers_to_remove (optional)
            - response_headers_to_add (optional, block):
                - header_name (optional)
                - header_value (optional)
                - replace (optional)
            - response_headers_to_remove (optional)
        - name (required)
        - path_rule (optional, block):
            - paths (required)
            - route_action (optional, block):
                - cors_policy (optional, block):
                    - allow_credentials (optional)
                    - allow_headers (optional)
                    - allow_methods (optional)
                    - allow_origin_regexes (optional)
                    - allow_origins (optional)
                    - disabled (required)
                    - expose_headers (optional)
                    - max_age (optional)
                - fault_injection_policy (optional, block):
                    - abort (optional, block):
                        - http_status (required)
                        - percentage (required)
                    - delay (optional, block):
                        - fixed_delay (required, block):
                            - nanos (optional)
                            - seconds (required)
                        - percentage (required)
                - request_mirror_policy (optional, block):
                    - backend_service (required)
                - retry_policy (optional, block):
                    - num_retries (optional)
                    - per_try_timeout (optional, block):
                        - nanos (optional)
                        - seconds (required)
                    - retry_conditions (optional)
                - timeout (optional, block):
                    - nanos (optional)
                    - seconds (required)
                - url_rewrite (optional, block):
                    - host_rewrite (optional)
                    - path_prefix_rewrite (optional)
                - weighted_backend_services (optional, block):
                    - backend_service (required)
                    - header_action (optional, block):
                        - request_headers_to_add (optional, block):
                            - header_name (required)
                            - header_value (required)
                            - replace (required)
                        - request_headers_to_remove (optional)
                        - response_headers_to_add (optional, block):
                            - header_name (required)
                            - header_value (required)
                            - replace (required)
                        - response_headers_to_remove (optional)
                    - weight (required)
            - service (optional)
            - url_redirect (optional, block):
                - host_redirect (optional)
                - https_redirect (optional)
                - path_redirect (optional)
                - prefix_redirect (optional)
                - redirect_response_code (optional)
                - strip_query (required)
        - route_rules (optional, block):
            - header_action (optional, block):
                - request_headers_to_add (optional, block):
                    - header_name (required)
                    - header_value (required)
                    - replace (required)
                - request_headers_to_remove (optional)
                - response_headers_to_add (optional, block):
                    - header_name (required)
                    - header_value (required)
                    - replace (required)
                - response_headers_to_remove (optional)
            - match_rules (optional, block):
                - full_path_match (optional)
                - header_matches (optional, block):
                    - exact_match (optional)
                    - header_name (required)
                    - invert_match (optional)
                    - prefix_match (optional)
                    - present_match (optional)
                    - range_match (optional, block):
                        - range_end (required)
                        - range_start (required)
                    - regex_match (optional)
                    - suffix_match (optional)
                - ignore_case (optional)
                - metadata_filters (optional, block):
                    - filter_labels (required, block):
                        - name (required)
                        - value (required)
                    - filter_match_criteria (required)
                - path_template_match (optional)
                - prefix_match (optional)
                - query_parameter_matches (optional, block):
                    - exact_match (optional)
                    - name (required)
                    - present_match (optional)
                    - regex_match (optional)
                - regex_match (optional)
            - priority (required)
            - route_action (optional, block):
                - cors_policy (optional, block):
                    - allow_credentials (optional)
                    - allow_headers (optional)
                    - allow_methods (optional)
                    - allow_origin_regexes (optional)
                    - allow_origins (optional)
                    - disabled (optional)
                    - expose_headers (optional)
                    - max_age (optional)
                - fault_injection_policy (optional, block):
                    - abort (optional, block):
                        - http_status (optional)
                        - percentage (optional)
                    - delay (optional, block):
                        - fixed_delay (optional, block):
                            - nanos (optional)
                            - seconds (required)
                        - percentage (optional)
                - request_mirror_policy (optional, block):
                    - backend_service (required)
                - retry_policy (optional, block):
                    - num_retries (required)
                    - per_try_timeout (optional, block):
                        - nanos (optional)
                        - seconds (required)
                    - retry_conditions (optional)
                - timeout (optional, block):
                    - nanos (optional)
                    - seconds (required)
                - url_rewrite (optional, block):
                    - host_rewrite (optional)
                    - path_prefix_rewrite (optional)
                    - path_template_rewrite (optional)
                    - regex_rewrite (optional, block):
                        - path_pattern (required)
                        - path_substitution (required)
                - weighted_backend_services (optional, block):
                    - backend_service (required)
                    - header_action (optional, block):
                        - request_headers_to_add (optional, block):
                            - header_name (required)
                            - header_value (required)
                            - replace (required)
                        - request_headers_to_remove (optional)
                        - response_headers_to_add (optional, block):
                            - header_name (required)
                            - header_value (required)
                            - replace (required)
                        - response_headers_to_remove (optional)
                    - weight (required)
            - service (optional)
            - url_redirect (optional, block):
                - host_redirect (optional)
                - https_redirect (optional)
                - path_redirect (optional)
                - prefix_redirect (optional)
                - redirect_response_code (optional)
                - strip_query (optional)
    - test (block):
        - description (optional)
        - host (required)
        - path (required)
        - service (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    default_service = optional(string)
    deletion_policy = optional(string)
    description     = optional(string)
    project         = optional(string)
    region          = optional(string)
    default_route_action = optional(object({
      cors_policy = optional(object({
        allow_credentials    = optional(bool)
        allow_headers        = optional(list(string))
        allow_methods        = optional(list(string))
        allow_origin_regexes = optional(list(string))
        allow_origins        = optional(list(string))
        disabled             = optional(bool)
        expose_headers       = optional(list(string))
        max_age              = optional(number)
      }))
      fault_injection_policy = optional(object({
        abort = optional(object({
          http_status = optional(number)
          percentage  = optional(number)
        }))
        delay = optional(object({
          fixed_delay = optional(object({
            nanos   = optional(number)
            seconds = optional(string)
          }))
          percentage = optional(number)
        }))
      }))
      request_mirror_policy = optional(object({
        backend_service = optional(string)
      }))
      retry_policy = optional(object({
        num_retries = optional(number)
        per_try_timeout = optional(object({
          nanos   = optional(number)
          seconds = optional(string)
        }))
        retry_conditions = optional(list(string))
      }))
      timeout = optional(object({
        nanos   = optional(number)
        seconds = optional(string)
      }))
      url_rewrite = optional(object({
        host_rewrite        = optional(string)
        path_prefix_rewrite = optional(string)
      }))
      weighted_backend_services = optional(list(object({
        backend_service = optional(string)
        header_action = optional(object({
          request_headers_to_add = optional(list(object({
            header_name  = optional(string)
            header_value = optional(string)
            replace      = optional(bool)
          })))
          request_headers_to_remove = optional(list(string))
          response_headers_to_add = optional(list(object({
            header_name  = optional(string)
            header_value = optional(string)
            replace      = optional(bool)
          })))
          response_headers_to_remove = optional(list(string))
        }))
        weight = optional(number)
      })))
    }))
    default_url_redirect = optional(object({
      host_redirect          = optional(string)
      https_redirect         = optional(bool)
      path_redirect          = optional(string)
      prefix_redirect        = optional(string)
      redirect_response_code = optional(string)
      strip_query            = bool
    }))
    header_action = optional(object({
      request_headers_to_add = optional(list(object({
        header_name  = optional(string)
        header_value = optional(string)
        replace      = optional(bool)
      })))
      request_headers_to_remove = optional(list(string))
      response_headers_to_add = optional(list(object({
        header_name  = optional(string)
        header_value = optional(string)
        replace      = optional(bool)
      })))
      response_headers_to_remove = optional(list(string))
    }))
    host_rule = optional(list(object({
      description  = optional(string)
      hosts        = set(string)
      path_matcher = string
    })))
    path_matcher = optional(list(object({
      default_route_action = optional(object({
        cors_policy = optional(object({
          allow_credentials    = optional(bool)
          allow_headers        = optional(list(string))
          allow_methods        = optional(list(string))
          allow_origin_regexes = optional(list(string))
          allow_origins        = optional(list(string))
          disabled             = optional(bool)
          expose_headers       = optional(list(string))
          max_age              = optional(number)
        }))
        fault_injection_policy = optional(object({
          abort = optional(object({
            http_status = optional(number)
            percentage  = optional(number)
          }))
          delay = optional(object({
            fixed_delay = optional(object({
              nanos   = optional(number)
              seconds = optional(string)
            }))
            percentage = optional(number)
          }))
        }))
        max_stream_duration = optional(object({
          nanos   = optional(number)
          seconds = string
        }))
        request_mirror_policy = optional(object({
          backend_service = string
        }))
        retry_policy = optional(object({
          num_retries = optional(number)
          per_try_timeout = optional(object({
            nanos   = optional(number)
            seconds = optional(string)
          }))
          retry_conditions = optional(list(string))
        }))
        timeout = optional(object({
          nanos   = optional(number)
          seconds = optional(string)
        }))
        url_rewrite = optional(object({
          host_rewrite          = optional(string)
          path_prefix_rewrite   = optional(string)
          path_template_rewrite = optional(string)
        }))
        weighted_backend_services = optional(list(object({
          backend_service = optional(string)
          header_action = optional(object({
            request_headers_to_add = optional(list(object({
              header_name  = optional(string)
              header_value = optional(string)
              replace      = optional(bool)
            })))
            request_headers_to_remove = optional(list(string))
            response_headers_to_add = optional(list(object({
              header_name  = optional(string)
              header_value = optional(string)
              replace      = optional(bool)
            })))
            response_headers_to_remove = optional(list(string))
          }))
          weight = optional(number)
        })))
      }))
      default_service = optional(string)
      default_url_redirect = optional(object({
        host_redirect          = optional(string)
        https_redirect         = optional(bool)
        path_redirect          = optional(string)
        prefix_redirect        = optional(string)
        redirect_response_code = optional(string)
        strip_query            = bool
      }))
      description = optional(string)
      header_action = optional(object({
        request_headers_to_add = optional(list(object({
          header_name  = optional(string)
          header_value = optional(string)
          replace      = optional(bool)
        })))
        request_headers_to_remove = optional(list(string))
        response_headers_to_add = optional(list(object({
          header_name  = optional(string)
          header_value = optional(string)
          replace      = optional(bool)
        })))
        response_headers_to_remove = optional(list(string))
      }))
      name = string
      path_rule = optional(list(object({
        paths = set(string)
        route_action = optional(object({
          cors_policy = optional(object({
            allow_credentials    = optional(bool)
            allow_headers        = optional(list(string))
            allow_methods        = optional(list(string))
            allow_origin_regexes = optional(list(string))
            allow_origins        = optional(list(string))
            disabled             = bool
            expose_headers       = optional(list(string))
            max_age              = optional(number)
          }))
          fault_injection_policy = optional(object({
            abort = optional(object({
              http_status = number
              percentage  = number
            }))
            delay = optional(object({
              fixed_delay = object({
                nanos   = optional(number)
                seconds = string
              })
              percentage = number
            }))
          }))
          request_mirror_policy = optional(object({
            backend_service = string
          }))
          retry_policy = optional(object({
            num_retries = optional(number)
            per_try_timeout = optional(object({
              nanos   = optional(number)
              seconds = string
            }))
            retry_conditions = optional(list(string))
          }))
          timeout = optional(object({
            nanos   = optional(number)
            seconds = string
          }))
          url_rewrite = optional(object({
            host_rewrite        = optional(string)
            path_prefix_rewrite = optional(string)
          }))
          weighted_backend_services = optional(list(object({
            backend_service = string
            header_action = optional(object({
              request_headers_to_add = optional(list(object({
                header_name  = string
                header_value = string
                replace      = bool
              })))
              request_headers_to_remove = optional(list(string))
              response_headers_to_add = optional(list(object({
                header_name  = string
                header_value = string
                replace      = bool
              })))
              response_headers_to_remove = optional(list(string))
            }))
            weight = number
          })))
        }))
        service = optional(string)
        url_redirect = optional(object({
          host_redirect          = optional(string)
          https_redirect         = optional(bool)
          path_redirect          = optional(string)
          prefix_redirect        = optional(string)
          redirect_response_code = optional(string)
          strip_query            = bool
        }))
      })))
      route_rules = optional(list(object({
        header_action = optional(object({
          request_headers_to_add = optional(list(object({
            header_name  = string
            header_value = string
            replace      = bool
          })))
          request_headers_to_remove = optional(list(string))
          response_headers_to_add = optional(list(object({
            header_name  = string
            header_value = string
            replace      = bool
          })))
          response_headers_to_remove = optional(list(string))
        }))
        match_rules = optional(list(object({
          full_path_match = optional(string)
          header_matches = optional(list(object({
            exact_match   = optional(string)
            header_name   = string
            invert_match  = optional(bool)
            prefix_match  = optional(string)
            present_match = optional(bool)
            range_match = optional(object({
              range_end   = number
              range_start = number
            }))
            regex_match  = optional(string)
            suffix_match = optional(string)
          })))
          ignore_case = optional(bool)
          metadata_filters = optional(list(object({
            filter_labels = list(object({
              name  = string
              value = string
            }))
            filter_match_criteria = string
          })))
          path_template_match = optional(string)
          prefix_match        = optional(string)
          query_parameter_matches = optional(list(object({
            exact_match   = optional(string)
            name          = string
            present_match = optional(bool)
            regex_match   = optional(string)
          })))
          regex_match = optional(string)
        })))
        priority = number
        route_action = optional(object({
          cors_policy = optional(object({
            allow_credentials    = optional(bool)
            allow_headers        = optional(list(string))
            allow_methods        = optional(list(string))
            allow_origin_regexes = optional(list(string))
            allow_origins        = optional(list(string))
            disabled             = optional(bool)
            expose_headers       = optional(list(string))
            max_age              = optional(number)
          }))
          fault_injection_policy = optional(object({
            abort = optional(object({
              http_status = optional(number)
              percentage  = optional(number)
            }))
            delay = optional(object({
              fixed_delay = optional(object({
                nanos   = optional(number)
                seconds = string
              }))
              percentage = optional(number)
            }))
          }))
          request_mirror_policy = optional(object({
            backend_service = string
          }))
          retry_policy = optional(object({
            num_retries = number
            per_try_timeout = optional(object({
              nanos   = optional(number)
              seconds = string
            }))
            retry_conditions = optional(list(string))
          }))
          timeout = optional(object({
            nanos   = optional(number)
            seconds = string
          }))
          url_rewrite = optional(object({
            host_rewrite          = optional(string)
            path_prefix_rewrite   = optional(string)
            path_template_rewrite = optional(string)
            regex_rewrite = optional(object({
              path_pattern      = string
              path_substitution = string
            }))
          }))
          weighted_backend_services = optional(list(object({
            backend_service = string
            header_action = optional(object({
              request_headers_to_add = optional(list(object({
                header_name  = string
                header_value = string
                replace      = bool
              })))
              request_headers_to_remove = optional(list(string))
              response_headers_to_add = optional(list(object({
                header_name  = string
                header_value = string
                replace      = bool
              })))
              response_headers_to_remove = optional(list(string))
            }))
            weight = number
          })))
        }))
        service = optional(string)
        url_redirect = optional(object({
          host_redirect          = optional(string)
          https_redirect         = optional(bool)
          path_redirect          = optional(string)
          prefix_redirect        = optional(string)
          redirect_response_code = optional(string)
          strip_query            = optional(bool)
        }))
      })))
    })))
    test = optional(list(object({
      description = optional(string)
      host        = string
      path        = string
      service     = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.path_matcher == null || alltrue([for item in v.path_matcher : (item.route_rules == null || alltrue([for item in item.route_rules : (item.match_rules == null || alltrue([for item in item.match_rules : (item.metadata_filters == null || alltrue([for item in item.metadata_filters : (length(item.filter_labels) >= 1 && length(item.filter_labels) <= 64)]))]))]))])
      )
    ])
    error_message = "Each filter_labels list must contain between 1 and 64 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.fault_injection_policy == null || (v.default_route_action.fault_injection_policy.abort == null || (v.default_route_action.fault_injection_policy.abort.http_status == null || (v.default_route_action.fault_injection_policy.abort.http_status >= 200 && v.default_route_action.fault_injection_policy.abort.http_status <= 599))))
      )
    ])
    error_message = "must be between 200 and 599"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.fault_injection_policy == null || (v.default_route_action.fault_injection_policy.abort == null || (v.default_route_action.fault_injection_policy.abort.percentage == null || (v.default_route_action.fault_injection_policy.abort.percentage >= 0 && v.default_route_action.fault_injection_policy.abort.percentage <= 100))))
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.fault_injection_policy == null || (v.default_route_action.fault_injection_policy.delay == null || (v.default_route_action.fault_injection_policy.delay.fixed_delay == null || (v.default_route_action.fault_injection_policy.delay.fixed_delay.nanos == null || (v.default_route_action.fault_injection_policy.delay.fixed_delay.nanos >= 0 && v.default_route_action.fault_injection_policy.delay.fixed_delay.nanos <= 999999999)))))
      )
    ])
    error_message = "must be between 0 and 999999999"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.fault_injection_policy == null || (v.default_route_action.fault_injection_policy.delay == null || (v.default_route_action.fault_injection_policy.delay.percentage == null || (v.default_route_action.fault_injection_policy.delay.percentage >= 0 && v.default_route_action.fault_injection_policy.delay.percentage <= 100))))
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.retry_policy == null || (v.default_route_action.retry_policy.num_retries == null || (v.default_route_action.retry_policy.num_retries >= 1)))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.retry_policy == null || (v.default_route_action.retry_policy.per_try_timeout == null || (v.default_route_action.retry_policy.per_try_timeout.nanos == null || (v.default_route_action.retry_policy.per_try_timeout.nanos >= 0 && v.default_route_action.retry_policy.per_try_timeout.nanos <= 999999999))))
      )
    ])
    error_message = "must be between 0 and 999999999"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.timeout == null || (v.default_route_action.timeout.nanos == null || (v.default_route_action.timeout.nanos >= 0 && v.default_route_action.timeout.nanos <= 999999999)))
      )
    ])
    error_message = "must be between 0 and 999999999"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.url_rewrite == null || (v.default_route_action.url_rewrite.host_rewrite == null || (length(v.default_route_action.url_rewrite.host_rewrite) >= 1 && length(v.default_route_action.url_rewrite.host_rewrite) <= 255)))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.url_rewrite == null || (v.default_route_action.url_rewrite.path_prefix_rewrite == null || (length(v.default_route_action.url_rewrite.path_prefix_rewrite) >= 1 && length(v.default_route_action.url_rewrite.path_prefix_rewrite) <= 1024)))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.default_route_action == null || (v.default_route_action.weighted_backend_services == null || alltrue([for item in v.default_route_action.weighted_backend_services : (item.weight == null || (item.weight >= 0 && item.weight <= 1000))]))
      )
    ])
    error_message = "must be between 0 and 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.path_matcher == null || alltrue([for item in v.path_matcher : (item.default_route_action == null || (item.default_route_action.fault_injection_policy == null || (item.default_route_action.fault_injection_policy.abort == null || (item.default_route_action.fault_injection_policy.abort.http_status == null || (item.default_route_action.fault_injection_policy.abort.http_status >= 200 && item.default_route_action.fault_injection_policy.abort.http_status <= 599)))))])
      )
    ])
    error_message = "must be between 200 and 599"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.path_matcher == null || alltrue([for item in v.path_matcher : (item.default_route_action == null || (item.default_route_action.fault_injection_policy == null || (item.default_route_action.fault_injection_policy.abort == null || (item.default_route_action.fault_injection_policy.abort.percentage == null || (item.default_route_action.fault_injection_policy.abort.percentage >= 0 && item.default_route_action.fault_injection_policy.abort.percentage <= 100)))))])
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.path_matcher == null || alltrue([for item in v.path_matcher : (item.default_route_action == null || (item.default_route_action.fault_injection_policy == null || (item.default_route_action.fault_injection_policy.delay == null || (item.default_route_action.fault_injection_policy.delay.percentage == null || (item.default_route_action.fault_injection_policy.delay.percentage >= 0 && item.default_route_action.fault_injection_policy.delay.percentage <= 100)))))])
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.path_matcher == null || alltrue([for item in v.path_matcher : (item.default_route_action == null || (item.default_route_action.retry_policy == null || (item.default_route_action.retry_policy.num_retries == null || (item.default_route_action.retry_policy.num_retries >= 1))))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_region_url_maps : (
        v.path_matcher == null || alltrue([for item in v.path_matcher : (item.default_route_action == null || (item.default_route_action.weighted_backend_services == null || alltrue([for item in item.default_route_action.weighted_backend_services : (item.weight == null || (item.weight >= 0 && item.weight <= 1000))])))])
      )
    ])
    error_message = "must be between 0 and 1000"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

