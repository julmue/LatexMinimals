% 1. Identification of the Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{minimal}[2016/01/26 Minimal Latex Class]

% 2. Preliminary Declarations
% Classes normally extend other classes. Load the base class here:
\LoadClass{scrartcl}

% Other packages that are required go here. Example:
\RequirePackage{xcolor}

% 3. Options
% Some Options can be surpressed. Example - prohibit two column layout:
\DeclareOption{twocolumn}{\OptionNotUsed}
% Options for the class:
\DeclareOption{color}{%
    \makeatletter
        \color{red}\global\let\default@color\current@color
    \makeatother
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{srcartcl}}
\ProcessOptions\relax

% 4. Declarations
% Further declarations that impact the style of the document

\addtokomafont{section}{\color{blue}}


