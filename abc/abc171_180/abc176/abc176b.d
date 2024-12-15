import std;

void main() {
    string N;
    readf("%s\n", N);

    int d;
    foreach (n; N)
        d += n - '0';

    writeln(d % 9 == 0 ? "Yes" : "No");
}
