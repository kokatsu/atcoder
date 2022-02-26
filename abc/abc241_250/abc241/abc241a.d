import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    int num;
    foreach (_; 0 .. 3) {
        num = a[num];
    }

    num.writeln;
}