import std;

void main() {
    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    int res = zip(A, B).map!(x => x[0] * x[1]).sum;
    res.writeln;
}
