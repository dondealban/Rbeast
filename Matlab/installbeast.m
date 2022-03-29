% system("gcc -c -fPIC -pthread -DNDEBUG -DM_RELEASE -DMATLAB_DEFAULT_RELEASE=R2017b -I/MATLAB/extern/include -O2 -Wall  -std=gnu99 -mfpmath=sse -msse2 -mstackrealign  *.c")
% system("g++ -c -fPIC -pthread -DNDEBUG -DM_RELEASE -DMATLAB_DEFAULT_RELEASE=R2017b -I/MATLAB/extern/include  -O2 -Wall    -mfpmath=sse -msse2 -mstackrealign  *.cpp")
% system("gcc -shared -pthread -L/MATLAB/bin/glnxa64 -lmx -lmex -lmat -lm -lut -lmwservices *.o -o Rbeast.mexa64")
%

%beastPath='a:\xx\'
%eval( webread('https://go.osu.edu/rbeast',weboptions('Cert','')) )
%eval( webread('http://bit.ly/loadbeast',weboptions('Cert','')) )

clear Rbeast % just in case that an exisitng version has been loaded 

if ismac()
    %https://stackoverflow.com/questions/24923384/how-to-get-matlab-to-determine-if-the-os-is-windows-or-mac-so-to-find-all-seri
    error("No mex library has been compiled for the MAC OS. You can either complile the C \n"...
          + "source code yourself or contact Kai Zhao at zhao.1423@osu.edu for help.");
end

if ~exist('beastPath','var')
    warning("The variable 'beastPath' doesnot exist; a temporaby folder is used instead");
    beastPath =  tempdir()+"Rbeast\";
    disp("BEAST installation Path: " + beastPath);
end

if ~exist(beastPath,"dir")
    beast_success=mkdir(beastPath);
    if ~ beast_success
        error("Cannot create or access the beast path specified.");
    end
else
    beast_tmpfile = fullfile(beastPath, num2str(datenum(date())+rand(1),'%10.6f') );
    beast_fid     = fopen(beast_tmpfile,'w+');
    if beast_fid==-1
        error("Cannot wiret or access the beast path specified.");
    else
        fclose(beast_fid);
        delete(beast_tmpfile);
    end
end

datapath = fullfile(beastPath,'testdata');
if ~exist(datapath,"dir")
    mkdir(datapath);
end
%%
rpath = "https://github.com/zhaokg/Rbeast/raw/master/Matlab/";

datalist={   'Nile.mat',  'ohioNDVI.mat',   'simData.mat',   'covid19.mat', ...
    'imageStack.mat',   'YellowstoneNDVI.mat', 'co2.mat'};

for i=1:numel(datalist)
    fn    = string(datalist{i});
    lfile = fullfile(datapath,fn);
    rfile = rpath+"testdata/"+fn;
    websave(lfile, rfile,weboptions('Cert',[]));
    fprintf('Downloaded: %s\n', lfile);
end

if ispc()
   rbeastFile='Rbeast.mexw64';
elseif isunix()
   rbeastFile='Rbeast.mexa64';
end

codelist={rbeastFile,  'beast.m',   'beast123.m',    'beast_irreg.m' , 'extractbeast.m' ...
           'plotbeast.m',   'printbeast.m',   'installbeast.m', 'uninstallbeast.m'};

for i=1:numel(codelist)
    fn    = string(codelist{i});
    lfile = fullfile(beastPath,fn);
    rfile = rpath+fn;
    websave(lfile, rfile,weboptions('Cert',[]));
    fprintf('Downloaded: %s\n', lfile);
end

%%
addpath(beastPath);
addpath(datapath);
addpath(genpath(beastPath) );
savepath
%%
%clc
fprintf('\n\n... Rbeast was installed at %s\n', beastPath);
fprintf("... '%s' and '%s' are added to the search path. \n     Make sure to add these two paths back (e.g., addpath()) after re-starting Matlab\n", beastPath, datapath);
fprintf("... Run <strong>uninstallbeast</strong> to remove the installed files from the harddisk\n");
fprintf("... Run <strong>'help beast'</strong>, <strong>'help beast123'</strong>, or <strong>'help beast_irreg'</strong> for usage and examples\n");
clearvars datapath codepath fn lfile rfile datalist codelist beast_success beast_fid beast_tmpfile rbeastFile