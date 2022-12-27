import std;

void main() {
    int X;
    readf("%d\n", X);

    auto seen = new bool[](X+1);
    seen[1] = true;

    int res = 1;
    foreach (i; 2 .. X+1) {
        if (seen[i]) continue;

        int p = i * i;
        while (p <= X) {
            res = max(res, p);
            seen[p] = true;
            p *= i;
        }
    }

    res.writeln;
}