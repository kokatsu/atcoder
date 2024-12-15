import std;

void main() {
    auto tmp = readln.chomp.split;
    string S = tmp[0];
    string T = tmp[1];

    if (S < T) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
