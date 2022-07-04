import std;

void main() {
    auto N = readln.chomp;

    long x, y = 1;
    foreach (n; N) {
        long d = n - '0';

        long u = min(x+d, y+10-d);
        long v = min(x+d+1, y+10-d-1);

        x = u, y = v;
    }

    long res = x;
    res.writeln;
}