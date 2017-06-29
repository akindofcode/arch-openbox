#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file        {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox          {raw => q(xml data)},
    begin_cat: beginning of a category              {begin_cat => ["name", "icon"]},
    end_cat:   end of a category                      {end_cat => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [
    {sep => "Archlinux"},
    #          COMMAND                 LABEL              ICON
    # {item => ['xdg-open .',       'File Manager', 'system-file-manager']},
    # {item => ['gnome-terminal',            'Terminal',     'utilities-terminal']},
    # {item => ['xdg-open http://', 'Web Browser',  'web-browser']},
    # {item => ['gmrun',            'Run command',  'system-run']},
    {item => ['gmrun',                      'Run Program',          'system-run']},
    {sep => undef},
    {item => ['gnome-terminal',             'Terminal',             'terminal']},
    {item => ['vivaldi-stable',             'Web Browser',          'vivaldi']},
    {item => ['pcmanfm',                    'File Manager',         'file-manager']},
    {item => ['subl',                       'Text Editor',          'sublime-text']},
    {item => ['vlc',                        'Media Player',         'vlc']},
    {sep => undef},

    {sep => 'Categories'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['other',       'Other',       'applications-other']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    #            COMMAND     LABEL        ICON
    #{pipe => ['obbrowser', 'Disk', 'drive-harddisk']},

    ## Generic advanced settings
    #{sep       => undef},
    #{obgenmenu => ['Openbox Settings', 'applications-engineering']},
    #{sep       => undef},

    {sep => undef},
    {pipe => ['al-places-pipemenu',         'Places',       'folder']},
    {pipe => ['al-recent-files-pipemenu',   'Recent Files', 'folder-recent']},

# Preferences
    {begin_cat => ['Preferences', 'theme']},
        
        # Openbox category
        {begin_cat => ['Openbox', 'openbox']},
            {item => ["$editor ~/.config/openbox/menu.xml",     'Edit menu.xml',                 'text-xml']},
            {item => ["$editor ~/.config/openbox/rc.xml",       'Edit rc.xml',                   'text-xml']},
            {item => ["$editor ~/.config/openbox/autostart",    'Edit autostart',                'text-xml']},
            {sep => undef},
            {item => ['obmenu3',                                'GUI Menu Editor',               'theme']},
            {item => ['obconf',                                 'GUI Config Tool',               'theme']},
            {item => ['obkey',                                  'GUI Keybinds',                  'theme']},

            {sep => undef},
            {item => ['openbox --restart',                      'Restart Openbox',               'openbox']},
            {item => ['openbox --reconfigure',                  'Reconfigure Openbox',           'openbox']},
        {end_cat => undef},
        {pipe => ['al-compositor',      'Compositor',      'compton']},
        #{pipe => ['al-conky-pipemenu',  'Conky',        'conky']},
        {pipe => ['al-tint2-pipemenu',  'Tint2',        'tint2']},
        {item => ['tint2conf',          'Tint2 GUI',    'tint2conf']},        
        {sep => undef},
        {item => ['lxappearance',                           'Lxappearance',             'theme']},
        #{item => ['xfce4-appearance-settings',              'Xfce4 Appearance',         'preferences-desktop-theme']},        
        #{item => ['gksudo lightdm-gtk-greeter-settings',    'LightDM Appearance',       'theme']},
        #{item => ["gksudo geany /etc/slim.conf",            'Slim Appearance',          'theme']},        
        {item => ['nitrogen',                               'Choose wallpaper',         'nitrogen']},
        #{item => ['xfce4-notifyd-config',                   'Notifications',            'notifications']},
        {item => ['pavucontrol',                            'Pulseaudio Preferences',   'multimedia-volume-control']},        
        #{item => ['oomox-gui',                              'Oomox',                    'preferences-desktop-theme']},       
        {sep => undef},
        #{item => ['exo-preferred-applications',             'Preferred Applications',   'preferred-applications']},
        #{item => ['xfce4-power-manager-settings',           'Power Management',         'power']},
        #{item => ['xfce4-settings-manager',                 'Xfce4 Settings Manager',   'preferences-desktop']},
        {item => ["dmenu_run -i -nb '#191919' -nf '#fea63c' -sb '#fea63c' -sf '#191919' -fn 'NotoMonoRegular:bold:pixelsize=14'", 'Dmenu', 'alacarte']},
        {item => ['arandr',                                 'Screen Layout Editor',     'display']},
        #{item => ['system-config-printer',                  'Printing',                 'printer']},        
        #{pipe => ['al-printing-pipemenu', 'Printing', 'printer']},
    {end_cat => undef},

     # Preferences
    # {begin_cat => ['System Settings', 'settings']},
    #     {item => ['pamac-manager',  'Pamac Package Manager',    'pamac']},
    #     {item => ['pamac-updater',  'Pamac Package Updater',    'pamac']},
    #     {sep => undef},
    #     {item => ["gksudo thunar",  'File Manager As Root',     'thunar']},
    #     {item => ["gksudo geany",   'Text Editor As Root',      'geany']},
    #     {sep => undef},
    #     {item => ["gksudo geany /etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm.conf",  'Login Settings','login']},
    #     {item => ["gksudo gparted", 'GParted',                  'gparted']},
    # {end_cat => undef},

    {sep => undef},
    # obmenu-generator
    {begin_cat => ['Obmenu-Generator', 'menu-editor']},
        {item => ["$editor ~/.config/obmenu-generator/schema.pl", 'Menu Schema', 'text-x-source']},
        {item => ["$editor ~/.config/obmenu-generator/config.pl", 'Menu Config', 'text-x-source']},
        {sep  => undef},
        {item => ['obmenu-generator -p',       'Generate a pipe menu',              'menu-editor']},
        {item => ['obmenu-generator -s -c',    'Generate a static menu',            'menu-editor']},
        {item => ['obmenu-generator -p -i',    'Generate a pipe menu with icons',   'menu-editor']},
        {item => ['obmenu-generator -s -i -c', 'Generate a static menu with icons', 'menu-editor']},
        {sep  => undef},
        {item => ['obmenu-generator -d',       'Refresh Icon Set',                  'gtk-refresh']},
    {end_cat => undef},




#############VVVVVVVVVV############
########   ORIGINAL FILE  #########
    # ## Custom advanced settings
    # {sep       => undef},
    # {begin_cat => ['Advanced Settings', 'applications-engineering']},

    #   # Configuration files
    #   {item => ["$editor ~/.conkyrc",              'Conky RC',    'text-x-generic']},
    #   {item => ["$editor ~/.config/tint2/tint2rc", 'Tint2 Panel', 'text-x-generic']},

    #   # obmenu-generator category
    #   {begin_cat => ['Obmenu-Generator', 'accessories-text-editor']},
    #     {item      => ["$editor ~/.config/obmenu-generator/schema.pl", 'Menu Schema', 'text-x-generic']},
    #     {item      => ["$editor ~/.config/obmenu-generator/config.pl", 'Menu Config', 'text-x-generic']},

    #     {sep  => undef},
    #     {item => ['obmenu-generator -s -c',    'Generate a static menu',             'accessories-text-editor']},
    #     {item => ['obmenu-generator -s -i -c', 'Generate a static menu with icons',  'accessories-text-editor']},
    #     {sep  => undef},
    #     {item => ['obmenu-generator -p',       'Generate a dynamic menu',            'accessories-text-editor']},
    #     {item => ['obmenu-generator -p -i',    'Generate a dynamic menu with icons', 'accessories-text-editor']},
    #     {sep  => undef},

    #     {item    => ['obmenu-generator -d', 'Refresh Icon Set', 'view-refresh']},
    #   {end_cat => undef},

    #   # Openbox category
    #   {begin_cat => ['Openbox', 'openbox']},
    #     {item      => ["$editor ~/.config/openbox/autostart", 'Openbox Autostart',   'text-x-generic']},
    #     {item      => ["$editor ~/.config/openbox/rc.xml",    'Openbox RC',          'text-x-generic']},
    #     {item      => ["$editor ~/.config/openbox/menu.xml",  'Openbox Menu',        'text-x-generic']},
    #     {item      => ['openbox --reconfigure',               'Reconfigure Openbox', 'openbox']},
    #   {end_cat => undef},
    # {end_cat => undef},

    # {sep => undef},
    # {pipe => ['al-help-pipemenu',              'Help &amp; Resources',              'info']},
    # {pipe => ['al-kb-pipemenu',                'Display Keybinds',                  'cs-keyboard']},

    # {sep => undef},
 ############^^^^^^^##########   

    ## The xscreensaver lock command
    {item => ['slimlock',                      'Lock Screen',                       'log-out']},
    ###### {item => ['xscreensaver-command -lock', 'Lock', 'system-lock-screen']},

    ## This option uses the default Openbox's action "Exit"
    {item => ['oblogout --config ~/.config/oblogout/oblogout.conf',                      'Exit Openbox',                      'exit']},
    ###### {exit => ['Exit', 'application-exit']},

    ## This uses the 'oblogout' menu
    # {item => ['oblogout', 'Exit', 'exit']},
]
