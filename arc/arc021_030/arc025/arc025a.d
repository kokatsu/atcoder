import std;

void main() {
    int[] D = readln.chomp.split.to!(int[]);
    int[] J = readln.chomp.split.to!(int[]);

    int res = D.zip(J).map!(a => a[0].max(a[1])).sum;
    res.writeln;
}
