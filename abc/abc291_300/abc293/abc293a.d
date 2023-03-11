import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    auto len = S.length;
    foreach (i; 0 .. len/2) {
        S.swapAt(i*2, i*2+1);
    }

    S.writeln;
}