import std;

void main() {
    long N;
    readf("%d\n", N);

    long S = N.to!real.sqrt.floor.to!long;

    bool[long] list;
    foreach (i; 2 .. S+1) {
        long num = i;
        while (num * i <= N) {
            num *= i;
            list[num] = true;
        }
    }

    long res = N - list.length;
    res.writeln;
}