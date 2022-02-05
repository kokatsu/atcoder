import std;

void main() {
    long n;
    readf("%d\n", n);

    long a = n * n, b = 1;
    foreach (i; 0 .. n) {
        b *= 2;
        if (b > a) {
            writeln("Yes");
            return;
        }
    }

    writeln("No");
}