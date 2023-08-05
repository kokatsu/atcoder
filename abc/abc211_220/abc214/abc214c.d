import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.split.to!(int[]);
    auto T = readln.chomp.split.to!(int[]);

    foreach (i; 0 .. N*2) {
        T[(i+1)%N] = min(T[(i+1)%N], T[i%N]+S[i%N]);
    }

    writefln("%(%s\n%)", T);
}