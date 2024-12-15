import std;
import core.bitop;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(uint[]);

    auto res = A.map!(a => a.bsf).minElement;
    res.writeln;
}
