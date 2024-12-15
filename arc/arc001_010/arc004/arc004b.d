import std;

void main() {
    int N;
    readf("%d\n", N);

    auto d = new int[](N);
    foreach (i; 0 .. N)
        readf("%d\n", d[i]);

    int mx = d.sum, mn = d[0];
    if (N == 2) {
        mn = abs(d[0] - d[1]);
    }
    else if (N > 2) {
        mn = max(0, d.maxElement * 2 - mx);
    }

    mx.writeln;
    mn.writeln;
}
