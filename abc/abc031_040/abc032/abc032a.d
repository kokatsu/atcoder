import std;

void main() {
    int a, b, n;
    readf("%d\n%d\n%d\n", a, b, n);

    int g = gcd(a, b), l = a * b / g, c = (n + l - 1) / l;

    int res = l * c;
    res.writeln;
}
