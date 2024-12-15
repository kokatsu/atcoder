import std;

void main() {
    int N;
    readf("%d\n", N);

    int add, mul = 1;
    foreach (i_; 0 .. N) {
        char c;
        int a;
        readf("%c %d\n", c, a);

        if (c == '+')
            add += a;
        if (c == '*' && a > 0)
            mul *= a;
    }

    int res = add * mul;
    res.writeln;
}
