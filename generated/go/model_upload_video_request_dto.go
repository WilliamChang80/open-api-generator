/*
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package 
import (
	"os"
)

type UploadVideoRequestDto struct {
	Thumbnail **os.File `json:"thumbnail,omitempty"`
	Title string `json:"title,omitempty"`
	Video **os.File `json:"video,omitempty"`
}
