import std;

void main() {
    auto A = readln.chomp.split.to!(ulong[]);

    ulong res = zip(A, A.length.iota).map!(a => a[0] * 2L ^^ a[1]).sum;
    res.writeln;
}
