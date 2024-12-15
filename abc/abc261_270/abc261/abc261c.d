import std;

void main() {
    int N;
    readf("%d\n", N);

    int[string] cnts;
    foreach (i; 0 .. N) {
        auto S = readln.chomp;

        if (S in cnts)
            writefln("%s(%d)", S, cnts[S]);
        else
            S.writeln;

        ++cnts[S];
    }
}
