(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(ansi-term-color-vector
   [unspecified "#1C2023" "#C7AE95" "#95C7AE" "#AEC795" "#AE95C7" "#C795AE" "#AE95C7" "#C7CCD1"])
 '(custom-enabled-themes (quote (base16-eighties)))
 '(custom-safe-themes
   (quote
    ("60e09d2e58343186a59d9ed52a9b13d822a174b33f20bdc1d4abb86e6b17f45b" "25c242b3c808f38b0389879b9cba325fb1fa81a0a5e61ac7cae8da9a32e2811b" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "3c9250705b4750e314d4e78c584b862415e183e16f76cc6fc18f0bd6f3d69b37" "1025e775a6d93981454680ddef169b6c51cc14cea8cb02d1872f9d3ce7a1da66" "808b47c5c5583b5e439d8532da736b5e6b0552f6e89f8dafaab5631aace601dd" "f984e2f9765a69f7394527b44eaa28052ff3664a505f9ec9c60c088ca4e9fc0b" "4bf5c18667c48f2979ead0f0bdaaa12c2b52014a6abaa38558a207a65caeb8ad" "df21cdadd3f0648e3106338649d9fea510121807c907e2fd15565dde6409d6e9" "ffe80c88e3129b2cddadaaf78263a7f896d833a77c96349052ad5b7753c0c5a5" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "7a2ac0611ded83cdd60fc4de55ba57d36600eae261f55a551b380606345ee922" "12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "986e7e8e428decd5df9e8548a3f3b42afc8176ce6171e69658ae083f3c06211c" "7a1190ad27c73888f8d16142457f59026b01fa654f353c17f997d83565c0fc65" "b65a3bb7dd1c43bf2e301143969a456a5cc380627076196f5529ce8fbf9fb8ac" "cbd8e65d2452dfaed789f79c92d230aa8bdf413601b261dbb1291fb88605110c" "aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "5b8eccff13d79fc9b26c544ee20e1b0c499587d6c4bfc38cabe34beaf2c2fc77" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "a85e40c7d2df4a5e993742929dfd903899b66a667547f740872797198778d7b5" "d2bd16a8bcf295dce0b70e1d2b5c17bb34cb28224a86ee770d56e6c22a565013" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "69e7e7069edb56f9ed08c28ccf0db7af8f30134cab6415d5cf38ec5967348a3c" "4feee83c4fbbe8b827650d0f9af4ba7da903a5d117d849a3ccee88262805f40d" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "80930c775cef2a97f2305bae6737a1c736079fdcc62a6fdf7b55de669fbbcd13" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "25c06a000382b6239999582dfa2b81cc0649f3897b394a75ad5a670329600b45" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "50b64810ed1c36dfb72d74a61ae08e5869edc554102f20e078b21f84209c08d1" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "1d6a2b8d5719875cd5f268ea4c2d4a24254122f9c63619b45d82404dd7359951" "01c5ebefcabc983c907ee30e429225337d0b4556cc1d21df0330d337275facbb" "e24679edfdea016519c0e2d4a5e57157a11f928b7ef4361d00c23a7fe54b8e01" default)))
 '(display-time-mode t)
 '(nav-width 25)
 '(package-selected-packages
   (quote
    (csv-mode exec-path-from-shell harvest rspec-mode \
              \
              \(defadvice\ rspec-compile\ \(around\ rspec-compile-around\)\
              \ \ \"Use\ BASH\ shell\ for\ running\ the\ specs\ because\ of\ ZSH\ issues\.\"\
              \ \ \(let\ \(\(shell-file-name\ \"/bin/bash\"\)\)\
              \ \ \ \ ad-do-it\)\)\
              \
              \(ad-activate\ \'rspec-compile\) robe jss visual-regexp-steroids visual-regexp markdown-mode coffee-mode sparql-mode flycheck-yamllint ruby-electric ruby-block ruby-additional rubocop ## yaml-mode web-mode w3m sml-modeline sml-mode rvm powerline php-mode php+-mode nyan-mode nav magit jsx-mode js3-mode git-gutter-fringe flycheck enh-ruby-mode base16-theme auto-complete ag)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 100 :width normal)))))

(add-to-list 'load-path "~/Sync/repos/dotemacs")
(load-library "window")
(load-library "ligatures")
(load-library "ruby")
(load-library "whitespace")
(load-library "mouse")
(load-library "javascript")
(load-library "org-init")
(load-library "css")
