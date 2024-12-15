import std;
import core.bitop;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int res;
    foreach (x; a)
        res += x.bsf;

    res.writeln;
}
