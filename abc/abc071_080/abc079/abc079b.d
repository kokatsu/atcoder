import std;

void main() {
    long N;
    readf("%d\n", N);

    auto lucas = new long[](N+1);
    lucas[0] = 2;
    lucas[1] = 1;
    foreach (i; 1 .. N) {
        lucas[i+1] = lucas[i] + lucas[i-1];
    }

    long res = lucas[N];
    res.writeln;
}