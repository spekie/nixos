{ config, pkgs, ... }:

{
  programs.firefox.enable = true;

  hm.programs.firefox = {
    enable = true;
    profiles."default" = {
      id = 0;
      settings = {
        "browser.aboutwelcome.enabled" = false;
        "browser.newtabpage.enabled" = false;
        "browser.startup.homepage" = "chrome://browser/content/blanktab.html";
        "identity.fxaccounts.enabled" = false;
        "extensions.htmlaboutaddons.recommendations.enabled" = false;
        "extensions.getAddons.showPane" = false;
        "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
        "general.autoScroll" = true;

        # about:preferences#home
        "browser.newtabpage.activity-stream.showSearch" = false;
        "browser.newtabpage.activity-stream.widgets.weather.enabled" = false;
        "browser.newtabpage.activity-stream.feeds.topsites" = false;
        "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
        "browser.newtabpage.activity-stream.showSponsored" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
        "browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;

        # Disable DRM
        "media.gmp-widevinecdm.enabled" = false;
        "media.gmp-widevinecdm.visible" = false;

        # Network
        "network.trr.mode" = 5;
        "dom.security.https_only_mode" = true;

        # Security and Privacy
        "browser.contentblocking.category" = "strict";

        # Disable autofill passwords and related
        "signon.rememberSignons" = false;
        "signon.autofillForms" = false;
        "signon.generation.enabled" = false;
        "signon.management.page.breach-alerts.enabled" = false;
        "dom.forms.autocomplete.formautofill" = false;
        "extensions.formautofill.addresses.enabled" = false;
        "extensions.formautofill.creditCards.enabled" = false;
        "signon.firefoxRelay.feature" = "disabled";

        # about:preferences#ai
        "browser.ai.control.default" = "blocked";
        "browser.ai.control.linkPreviewKeyPoints" = "blocked";
        "browser.ai.control.pdfjsAltText" = "blocked";
        "browser.ai.control.sidebarChatbot" = "blocked";
        "browser.ai.control.smartTabGroups" = "blocked";
        "browser.ai.control.smartWindow" = "blocked";
        "browser.ai.control.translations" = "blocked";

        # about:preferences#search
        "browser.urlbar.suggest.topsites" = false;
        "browser.urlbar.suggest.trending" = false;
        "browser.urlbar.suggest.engines" = false;
        "browser.urlbar.suggest.quickactions" = false;
        "browser.urlbar.suggest.quicksuggest.sponsored" = false;
        "browser.urlbar.suggest.quicksuggest.all" = false;
        "browser.urlbar.suggest.recentsearches" = false;

        # about:preferences#permissionsData
        "datareporting.healthreport.uploadEnabled" = false;
        "browser.discovery.enabled" = false;
        "datareporting.usage.uploadEnabled" = false;
        "app.shield.optoutstudies.enabled" = false;
        "nimbus.rollouts.enabled" = false;

        # about:preferences#tabsBrowsing
        "browser.ml.linkPreview.enabled" = false;
        "browser.ml.linkPreview.longPress" = false;
        "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
        "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
      };
    };

    profiles.default.search = {
      force = true;
      default = "ddg";
      privateDefault = "ddg";

      engines = {
        "Nix Packages" = {
          urls = [
            {
              template = "https://search.nixos.org/packages";
              params = [
                { name = "channel"; value = "unstable"; }
                { name = "query";   value = "{searchTerms}"; }
              ];
            }
          ];
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@np" ];
        };

        "Nix Options" = {
          urls = [
            {
              template = "https://search.nixos.org/options";
              params = [
                { name = "channel"; value = "unstable"; }
                { name = "query";   value = "{searchTerms}"; }
              ];
            }
          ];
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@no" ];
        };

        "NixOS Wiki" = {
           urls = [
             {
               template = "https://wiki.nixos.org/w/index.php";
               params = [
                 { name = "search"; value = "{searchTerms}"; }
               ];
             }
           ];
           icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
           definedAliases = [ "@nw" ];
         };
         "google".metaData.hidden = true;
         "amazondotcom-us".metaData.hidden = true;
         "bing".metaData.hidden = true;
         "ebay".metaData.hidden = true;
         "perplexity".metaData.hidden = true;
         "wikipedia".metaData.hidden = true;
      };
    };
  };
}
