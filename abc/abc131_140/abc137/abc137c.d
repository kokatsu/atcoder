import std;

void main() {
    long N;
    readf("%d\n", N);

    long res;
    long[string] cnts;
    foreach (i; 0 .. N) {
        auto s = readln.chomp.to!(dchar[]);

        s.sort;

        auto t = s.to!string;
        res += cnts[t]++;
    }

    res.writeln;
}