;; Indicate which modules to import to access the variables
;; used in this configuration.
(use-modules (srfi srfi-1))
(use-modules (gnu) (nongnu packages linux))
(use-modules (my-services kmonad))
(use-service-modules cups desktop networking ssh xorg sound)
(use-package-modules linux networking ssh gnome version-control vim fonts shells
                     xdisorg wm haskell-apps certs)

(define %keyboard-layout (keyboard-layout "us" "dvorak-intl"))

(define %my-services 
  (append 
    (list
    	(kmonad-service "/home/sam/.config/kmonad/builtin.kbd")
      ;; To configure OpenSSH, pass an 'openssh-configuration'
      ;; record as a second argument to 'service' below.
      (service openssh-service-type))

      ;; (set-xorg-configuration
      ;;   (xorg-configuration (keyboard-layout %keyboard-layout))))

    ;; This is the default list of services we
    ;; are appending to, minus GDM
    (remove 
      (lambda (service) (eq? (service-kind service) gdm-service-type)) 
      %desktop-services)))

(operating-system
  (kernel linux)
  (firmware (list linux-firmware))
  (locale "en_US.utf8")
  (timezone "Europe/Amsterdam")
  (keyboard-layout (keyboard-layout "us"))
  (host-name "moore")

  ;; The list of user accounts ('root' is implicit).
  (users (cons* (user-account
                  (name "sam")
                  (comment "Sam Roelants")
                  (group "users")
                  (shell (file-append fish "/bin/fish"))
                  (home-directory "/home/sam")
                  (supplementary-groups '("wheel" 
                  											  "netdev" 
                  											  "audio" 
                  											  "video"
                  											  "input")))
                %base-user-accounts))

  ;; Packages installed system-wide.  Users can also install packages
  ;; under their own account: use 'guix search KEYWORD' to search
  ;; for packages and 'guix install PACKAGE' to install a package.
  (packages 
    (append 
      (list 
			  ;; Tools we always want around
			  git
			  neovim
			  openssh
			  rofi
			  fish
			  sway
			  waybar
			  tofi
			  kmonad

			  ;; bluetooth
			  bluez
			  blueman ;; audio
			  pipewire

			  ;; ssl
			  nss-certs

			  ;; fonts 
			  ; font-adobe-source-code-pro 
			  ; font-adobe-source-sans-pro 
			  ; font-adobe-source-serif-pro 
			  ; font-anonymous-pro
			  ; font-awesome
			  ; font-bitstream-vera
			  ; font-dejavu
			  ; font-fira-code
			  ; font-fira-mono
			  ; font-fira-sans
			  ; font-gnu-freefont
			  ; font-iosevka
			  ; font-iosevka-aile
			  ; font-iosevka-etoile
			  ; font-iosevka-slab
			  ; font-iosevka-term
			  ; font-iosevka-term-slab
			  font-inconsolata
			  ; font-hack
			  ; font-lato
			  ; font-liberation
			  ; font-linuxlibertine
			  ; font-mononoki
			  ; font-terminus
			  )
        %base-packages))

  ;; Below is the list of system services.  To search for available
  ;; services, run 'guix system search KEYWORD' in a terminal.
  (services
    (modify-services %my-services

      (guix-service-type config => 
			 (guix-configuration
			   (inherit config)
			   (substitute-urls
			     (append 
			       (list "https://substitutes.nonguix.org")
				     %default-substitute-urls))
			   (authorized-keys
			     (append (list (plain-file 
					     "non-guix.pub" 
					     "(public-key (ecc 
						  		(curve Ed25519)
						  		(q #C1FD53E5D4CE971933EC50C9F307AE2171A2D3B52C804642A7A35F84F3A4EA98#)))"))
				     %default-authorized-guix-keys))))

			 (udev-service-type config =>
			   (udev-configuration 
			     (inherit config)
			     (rules (cons kmonad 
			                  (udev-configuration-rules config)))))))

  (bootloader (bootloader-configuration
                (bootloader grub-efi-bootloader)
                (targets (list "/boot/efi"))
                (keyboard-layout %keyboard-layout)))
  (swap-devices (list (swap-space
                        (target (uuid
                                 "6ce3c652-5b56-460c-a666-b3bae867f4d3")))))

  ;; The list of file systems that get "mounted".  The unique
  ;; file system identifiers there ("UUIDs") can be obtained
  ;; by running 'blkid' in a terminal.
  (file-systems (cons* (file-system
                         (mount-point "/boot/efi")
                         (device (uuid "8444-632C"
                                       'fat32))
                         (type "vfat"))
                       (file-system
                         (mount-point "/")
                         (device (uuid
                                  "108650d6-b8a9-4c0c-a86e-05e81bfd48c3"
                                  'btrfs))
                         (type "btrfs")) %base-file-systems)))
