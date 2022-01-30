import std;

void main() {
    int N;
    readf("%d\n", N);

    string S = readln.chomp;
    
    int[] l, r;
    foreach_reverse (i, s; S) {
        if (s == 'R') l ~= i.to!int;
        else r ~= i.to!int;
    }

    l.reverse;

    int[] res = l ~ [N] ~ r;
    writefln("%(%d %)", res);
}