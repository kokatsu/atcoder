import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int[] list;
    foreach (i; 0 .. 3) {
        foreach (j; i+1 .. 4) {
            foreach (k; j+1 .. 5) {
                list ~= A[i] + A[j] + A[k];
            }
        }
    }

    list.sort!"a > b";

    int res = list[2];
    res.writeln;
}