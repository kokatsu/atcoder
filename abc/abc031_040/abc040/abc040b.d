import std;

void main() {
    int n;
    readf("%d\n", n);

    int s = n.to!real.sqrt.floor.to!int;
    int res = int.max;
    foreach (i; 1 .. s+1) {
        int j = n / i;
        res = min(res, abs(i-j)+n-i*j);
    }

    res.writeln;
}