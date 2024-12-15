import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = N - 2015;
    if (N <= 2014 || N == 2017)
        res = -1;
    else if (N <= 2016)
        res = N - 2014;

    res.writeln;
}
