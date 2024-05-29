\ProvidesClass{ministate}[2021/09/15 v1.0 Minimalist sttatement class]
\LoadClass[12pt,letterpaper]{article} % Font size and paper type

%--------------------------------------------------%
%                 packages                         %
%                                                  %
%--------------------------------------------------%
% Document Formatting
\usepackage[margin=1in]{geometry}
\usepackage{parskip}
\usepackage{fancyhdr}
\setlength{\headheight}{15pt}

% References and Citations
\usepackage{url}
\usepackage{hyperref}
\usepackage{natbib}

%--------------------------------------------------%
%                 Fonts                            %
%                                                  %
%--------------------------------------------------%

% !!!!!!! IMPORTANT !!!!!!!
% !! XELATEX COMPILATION REQUIRED !!
% Set compiler in Overleaf menu <-

\usepackage{fontspec} 
\usepackage{fontawesome}

% .ttf files required 
\setmainfont{AtkinsonHyperlegible}[ 
Extension = .ttf,
UprightFont = *-Regular,
BoldFont = *-Bold,
ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic] 

%--------------------------------------------------%
%                 New Commands                     %
%                                                  %
%--------------------------------------------------%

% NAME AND TYPE OF STATEMENT
\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \statement#1{\def\@statement{#1}} % Defines the \statement command to set type of statement
\def \@statement {} % Sets \@statement to empty by default

%
\def \runninghead {
  \begingroup
    \pagestyle{fancy}
    \fancyhf{}
    \rhead{\MakeUppercase{\bf \@name}}
    \lhead{\MakeUppercase{\bf \@statement}}
    \rfoot{\thepage}
  \endgroup
}





