import "nek";
type file;

/* Inputs: standard dictionary, user file, and list of viscosities */
string prefix="HA";
file json <"HA.json">;
file tusr <"single_mode.tusr">;

string pname="viscosity";
//float[] pvals = [0.0002, 0.0001, 0.00005];
//float[] pvals = [0.0004, 0.0002, 0.0001];
float[] pvals = [0.0004];

int nwrite=256;
boolean legacy = false;

int nodes = 1024;
int mode = 32;
int jtime = 60;

int nstep = 60;
//int io_step = 128;
int io_step = 1;
//int step_block = 512;
int step_block = 2;

float io_time = 2.0;
float time_block = 4.0;

int test;
test = sweep(prefix, json, tusr, pname, pvals, nwrite, legacy, nstep, io_step, step_block, io_time, time_block, nodes, mode, jtime);
